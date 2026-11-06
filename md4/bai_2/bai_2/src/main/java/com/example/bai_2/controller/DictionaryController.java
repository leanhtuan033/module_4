
package com.example.bai_2.controller;

import com.example.bai_2.service.DictionaryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DictionaryController {

    private final DictionaryService dictionaryService =
            new DictionaryService();

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @PostMapping("/search")
    public String search(
            @RequestParam(value = "word", defaultValue = "") String word,
            Model model) {

        String keyword = word.trim();
        model.addAttribute("word", keyword);

        if (keyword.isEmpty()) {
            model.addAttribute("found", false);
            model.addAttribute("message",
                    "Vui lòng nhập từ cần tra cứu.");
            return "index";
        }

        String meaning = dictionaryService.lookup(keyword);

        if (meaning != null) {
            model.addAttribute("found", true);
            model.addAttribute("meaning", meaning);
        } else {
            model.addAttribute("found", false);
            model.addAttribute("message",
                    "Không tìm thấy từ: " + keyword);
        }

        return "index";
    }
}

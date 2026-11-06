package com.example.module_4;

import java.math.BigDecimal;
import java.math.RoundingMode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CurrencyController {

    @GetMapping("/")
    public String showForm() {
        return "index";
    }

    @PostMapping("/convert")
    public String convertCurrency(
            @RequestParam("rate") String rateInput,
            @RequestParam("usd") String usdInput,
            Model model) {

        try {
            BigDecimal rate = new BigDecimal(rateInput);
            BigDecimal usd = new BigDecimal(usdInput);

            if (rate.compareTo(BigDecimal.ZERO) <= 0
                    || usd.compareTo(BigDecimal.ZERO) < 0) {
                model.addAttribute("error",
                        "Tỉ giá phải lớn hơn 0 và số USD không được âm.");
                return "index";
            }

            BigDecimal vnd = usd.multiply(rate)
                    .setScale(2, RoundingMode.HALF_UP);

            model.addAttribute("rate", rate);
            model.addAttribute("usd", usd);
            model.addAttribute("vnd", vnd);
            return "result";

        } catch (NumberFormatException e) {
            model.addAttribute("error", "Vui lòng nhập số hợp lệ.");
            return "index";
        }
    }
}


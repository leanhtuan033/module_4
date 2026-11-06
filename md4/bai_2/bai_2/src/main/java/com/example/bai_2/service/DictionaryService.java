package com.example.bai_2.service;

public class DictionaryService {

    private final String[] englishWords = {
            "hello", "goodbye", "book", "apple", "computer",
            "school", "student", "teacher", "love", "water",
            "cat", "dog", "beautiful", "thank you", "family",
            "friend", "house", "car"
    };

    private final String[] vietnameseMeanings = {
            "Xin chào", "Tạm biệt", "Quyển sách", "Quả táo",
            "Máy tính", "Trường học", "Học sinh / Sinh viên",
            "Giáo viên", "Tình yêu / Yêu", "Nước",
            "Con mèo", "Con chó", "Xinh đẹp", "Cảm ơn",
            "Gia đình", "Bạn bè", "Ngôi nhà", "Xe ô tô"
    };

    public String lookup(String word) {
        if (word == null) {
            return null;
        }

        String keyword = word.trim();

        for (int i = 0; i < englishWords.length; i++) {
            if (englishWords[i].equalsIgnoreCase(keyword)) {
                return vietnameseMeanings[i];
            }
        }

        return null;
    }
}
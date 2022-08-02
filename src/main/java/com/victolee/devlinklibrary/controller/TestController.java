package com.victolee.devlinklibrary.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
public class TestController {
    @GetMapping("/")
    public String list() {
        return "foo";
    }
}

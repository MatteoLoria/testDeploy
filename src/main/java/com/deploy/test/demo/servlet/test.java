package com.deploy.test.demo.servlet;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test {

    @GetMapping(value = "/")
    public String index() {
        return "perl script is working";
    }

}

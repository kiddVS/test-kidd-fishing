package com.kidd.testfishing1.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;

@Controller
public class AmazomController {

    @RequestMapping("/passwd")
    public Object test(Model model){
        return "emailNo";
    }
}

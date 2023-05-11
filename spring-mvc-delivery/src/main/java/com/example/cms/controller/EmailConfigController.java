package com.example.cms.controller;

import com.example.cms.model.EmailConfig;
import com.example.cms.service.EmailConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailConfigController {
    @Autowired
    private EmailConfigService emailConfigService;

    @GetMapping("/config")
    public ModelAndView getConfig() {
        ModelAndView modelAndView = new ModelAndView("config");
        EmailConfig emailConfig = emailConfigService.getConfig();
        modelAndView.addObject("emailConfig", emailConfig);
        return modelAndView;
    }

    @PostMapping("/saveConfig")
    public String saveConfig(@ModelAttribute("emailConfig") EmailConfig emailConfig) {
        emailConfigService.saveConfig(emailConfig);
        return "redirect:/config";
    }
}

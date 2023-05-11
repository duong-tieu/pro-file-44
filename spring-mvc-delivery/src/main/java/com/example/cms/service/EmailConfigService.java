package com.example.cms.service;

import com.example.cms.model.EmailConfig;
import org.springframework.stereotype.Service;

@Service
public class EmailConfigService {

    private EmailConfig emailConfig;

    public EmailConfig getConfig() {
        if (emailConfig == null) {
            emailConfig = new EmailConfig();
        }
        return emailConfig;
    }

    public void saveConfig(EmailConfig emailConfig) {
        this.emailConfig = emailConfig;
    }
}

package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    public void sendApplicationMail(String toEmail) {

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(toEmail);
        message.setSubject("Job Application Received");
        message.setText(
            "Hello,\n\n" +
            "Your job application has been received successfully.\n" +
            "Our team will contact you soon.\n\n" +
            "Regards,\nJobify Team"
        );

        mailSender.send(message);
    }
}

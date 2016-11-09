package com.usugy.service;

import com.usugy.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by tomek on 2016-11-04.
 */
@Service
public class MailServiceImpl implements MailService {

    @Autowired
    private MailSender mailSender;

//    public void setMailSender(MailSender mailSender) {
//        this.mailSender = mailSender;
//    }

    public void sendMail(String from, String to, String subject, String msg) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setFrom(from);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(msg);
        mailSender.send(message);
    }


}


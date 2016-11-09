package com.usugy.service;

import com.usugy.model.Account;

/**
 * Created by tomek on 2016-11-04.
 */
public interface MailService {
    public void sendMail(String from, String to, String subject, String msg);

}

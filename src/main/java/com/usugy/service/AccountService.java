package com.usugy.service;

import com.usugy.model.Account;
import org.springframework.validation.Errors;

import java.net.MalformedURLException;

/**
 * Created by tomek on 2016-08-28.
 */
public interface AccountService {
        public Account createAndSaveNewAccount(Account account);
        Account save(Account account);
        public Account findByEmail(String email);
        public Account findbyConfirmationToken(String confirmationToken);
//        throws  MalformedURLException ??
        public void sendMailAskForConfirmation(Account account) ;
        public void validateIfAccountAlreadyExist(Object o, Errors errors);
}

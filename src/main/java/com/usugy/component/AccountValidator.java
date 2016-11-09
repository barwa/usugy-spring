package com.usugy.component;

import com.usugy.model.Account;
import com.usugy.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by tomek on 2016-11-09.
 */

@Component
public class AccountValidator implements Validator {

    @Autowired
    AccountRepository accountRepository;

    // validate if user signup is not for account already existing in DB
    public void validate(Object o, Errors errors) {

        if(o instanceof Account)
        {
            Account account = (Account)o;
            if(accountRepository.findByEmail(account.getEmail()) != null) {
                errors.rejectValue("email", "Email.account.emailexist");

            }
        }

    }
    // required method when implementing Validator
    public boolean supports(Class<?> aClass) {
        return Account.class.isAssignableFrom(aClass);
    }

}

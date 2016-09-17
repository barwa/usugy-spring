package com.usugy.service;

import com.usugy.model.Account;

/**
 * Created by tomek on 2016-08-28.
 */
public interface AccountService {
        Account save(Account account);
        public Account findByEmail(String email);

}

package com.usugy.service;

import com.usugy.model.Account;
import com.usugy.model.AccountRole;
import com.usugy.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by tomek on 2016-08-28.
 */
@Service
@EnableTransactionManagement
public class AccountServiceImpl implements AccountService{

    @Autowired
    private AccountRepository accountRepository;

    @Transactional
    public Account save(Account account) {

        AccountRole accountRole = new AccountRole();
        accountRole.setRole("ROLE_USER");
        accountRole.setAccount(account);
        Set<AccountRole> accountRoles = new HashSet<AccountRole>();
        accountRoles.add(accountRole);
        account.setRoles(accountRoles);

        account.setPassword(new BCryptPasswordEncoder().encode(account.getPassword()));
        return accountRepository.save(account);
    }
    public Account findByEmail(String email) {
        return accountRepository.findByEmail(email);
    }
}

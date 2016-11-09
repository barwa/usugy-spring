package com.usugy.service;

import com.usugy.model.Account;
import com.usugy.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by tomek on 2016-09-03.
 */
@Service
public class UserServiceImpl implements UserDetailsService {

    @Autowired
    private AccountRepository accountRepository;

    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return accountRepository.findByEmail(email);
    }
}

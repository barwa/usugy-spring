package com.usugy.service;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.Instant;

import com.usugy.component.AccountValidator;
import com.usugy.model.Account;
import com.usugy.model.AccountRole;
import com.usugy.repository.AccountRepository;
import org.hibernate.annotations.SourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by tomek on 2016-08-28.
 */
@Service
@EnableTransactionManagement
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private MailService mailService;

    @Autowired
    private AccountValidator accountValidator;

    @Autowired
    private MessageSource messageSource;

    @Value("${hostname}")
    private String hostname;

    @Value("${mailusername}")
    private String fromEmail;

    @Transactional
    public Account save(Account account) {
        return accountRepository.save(account);
    }

    public Account findByEmail(String email) {
        return accountRepository.findByEmail(email);
    }
    public Account findbyConfirmationToken(String confirmationToken) { return accountRepository.findbyConfirmationToken(confirmationToken);}

    public void validateIfAccountAlreadyExist(Object o, Errors errors) {
        accountValidator.validate(o, errors);
    }

    public Account createAndSaveNewAccount(Account account) {

        account.setPassword(new BCryptPasswordEncoder().encode(account.getPassword()));
        account.setConfirmationToken(UUID.randomUUID().toString());
        account.setDateCreation(new Date());

        // Set Role
        AccountRole accountRole = new AccountRole();
        accountRole.setRole("ROLE_USER");
        accountRole.setAccount(account);
        Set<AccountRole> accountRoles = new HashSet<AccountRole>();
        accountRoles.add(accountRole);
        account.setRoles(accountRoles);

        return this.save(account);

    }

//    throws MalformedURLException ??
    public void sendMailAskForConfirmation(Account account)  {

       String from = this.fromEmail;

       String urlString = "http://" + hostname;
       urlString += "/confirm/" + account.getConfirmationToken();

//            URL url = new URL(urlString); // validate the URL, will throw an exception if bad.

//        Retrive users locale
        Locale locale = LocaleContextHolder.getLocale();
        String subject = messageSource.getMessage("Email.confirmation.subject", null,"Confirm your account", locale);
        String message = messageSource.getMessage("Email.confirmation.body", new Object[] {urlString}, "Please click following link to confirm your account "+urlString, locale);

        mailService.sendMail(from, account.getEmail(), subject, message);
    }




}

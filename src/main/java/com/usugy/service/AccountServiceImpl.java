package com.usugy.service;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.Instant;

import com.usugy.component.AccountValidator;
import com.usugy.model.Account;
import com.usugy.model.AccountRole;
import com.usugy.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

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

    @Transactional
    public Account save(Account account) {
        return accountRepository.save(account);
    }
    public Account findByEmail(String email) {
        return accountRepository.findByEmail(email);
    }
    public Account findbyConfirmationToken(String confirmationToken) { return accountRepository.findbyConfirmationToken(confirmationToken);}

    public Account createAndSaveNewAccount(Account account) {

        account.setPassword(new BCryptPasswordEncoder().encode(account.getPassword()));
        account.setConfirmationToken(UUID.randomUUID().toString());
        account.setDateCreation(new Date());
        System.out.println("TOKEN: "+account.getConfirmationToken() +" data: "+account.getDateCreation() );
        //        account.setDateCreation(Instant.now());
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

            String from = "tomasz.barwicki@gmail.com";
//            String urlString = "http://" + Configuration.root().getString("server.hostname");
            String urlString = "http://" + "localhost:8080";
            urlString += "/confirm/" + account.getConfirmationToken();
//            URL url = new URL(urlString); // validate the URL, will throw an exception if bad.
//             String subject = Messages.get("mail.confirm.subject");
            String subject = "Aktywacja konta";
            String message = "Hej!<br> Twoj link aktywacyjny: <br> <a href=\""+ urlString+"\">LINK</a>";
//            String message = Messages.get("mail.confirm.message", url.toString());

            mailService.sendMail(from, account.getEmail(), subject, message);
    }

    public void validateIfAccountAlreadyExist(Object o, Errors errors) {
        accountValidator.validate(o, errors);
    }


}

package com.usugy.controller;

import com.usugy.model.Account;
import com.usugy.service.AccountService;
import com.usugy.service.MailService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

/**
 * Created by tomek on 2016-08-24.
 */

@Controller
//@SessionAttributes("account")
public class SignupController {

    @Autowired
    private AccountService accountService;

    @Autowired
    private MailService mailService;

    private static final Logger logger = Logger.getLogger(SignupController.class);

//    @RequestMapping(value = "/signup", method = RequestMethod.GET)
//    public String signup(Model model, HttpSession session) {
////        Account account = new Account();
//        Account account = (Account)session.getAttribute("account");
//        if(account == null)
//        {
//            account = new Account();
//        }
//        model.addAttribute("account", account);
//        return "signup3";
//    }


    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String signup(@Valid @ModelAttribute("account") Account account, BindingResult result, HttpSession session) {

        accountService.validateIfAccountAlreadyExist(account, result);
        if(result.hasErrors())
        {
            return "index";
        }
        accountService.createAndSaveNewAccount(account);
        accountService.sendMailAskForConfirmation(account);;
        return "redirect:/";
    }

    @RequestMapping(value = "/confirm/{token}", method = RequestMethod.GET)
    public String activateAccount(@PathVariable("token") String token, Model model) {
//        use token
//        validate token
//        findtoken in account
//
        Boolean validation = false;
        Account account = accountService.findbyConfirmationToken(token);
        if(account != null && account.getValidated() == false){
            account.setValidated(true);
            account.setConfirmationToken(null);
            accountService.save(account);
            validation = true;
            model.addAttribute("validation", validation);
        }

//        return "author##updateprofile";
          return "author";
    }
}



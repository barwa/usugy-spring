package com.usugy.controller;

import com.usugy.model.Account;
import com.usugy.service.AccountService;
import com.usugy.service.MailService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.security.Principal;

/**
 * Created by tomek on 2016-08-24.
 */

@Controller
//@SessionAttributes("account")
public class HomeController {

    private static final Logger logger = Logger.getLogger(HomeController.class);

    @Autowired
    private AccountService accountService;

//    @Autowired
//    private MailService mailService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model, HttpSession session) {

//        if (principal == null) return "redirect:/signup";
//        Account account = new Account();
//        model.addAttribute("account", account);
        logger.info("Entered HomeController");
        Account account = (Account)session.getAttribute("account");
        if(account == null)
        {
            account = new Account();
        }
        model.addAttribute("account", account);
        return "index";
    }

}

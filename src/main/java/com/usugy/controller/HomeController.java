package com.usugy.controller;

import com.usugy.model.Account;
import com.usugy.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.security.Principal;

/**
 * Created by tomek on 2016-08-24.
 */

@Controller
//@SessionAttributes("account")
public class HomeController {

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model, Principal principal) {

        if (principal == null) return "redirect:/signup";
        Account account = new Account();
        model.addAttribute("account", account);
        return "index";
    }
    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String verifyEmail(@ModelAttribute("account") Account account, Model model) {

        Account account2 = accountService.findByEmail(account.getEmail());
        if(account2 == null) {
            account2 = new Account();
            account2.setFirstname("nie ma takiego adresu");
        }
        model.addAttribute("account", account2);
        return "verifyemail";
    }

}

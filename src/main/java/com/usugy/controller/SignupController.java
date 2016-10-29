package com.usugy.controller;

import com.usugy.model.Account;
import com.usugy.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

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

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup(Model model, HttpSession session) {
//        Account account = new Account();
        Account account = (Account)session.getAttribute("account");
        if(account == null)
        {
            account = new Account();
        }
        model.addAttribute("account", account);
        return "signup3";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String signup(@Valid @ModelAttribute("account") Account account, BindingResult result, HttpSession session) {
        if(result.hasErrors())
        {
            return "signup3";
        }
        accountService.save(account);
        return "redirect:/";
    }
}



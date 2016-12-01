package com.usugy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.usugy.model.Account;

/**
 * Created by tomek on 2016-09-08.
 */

@Controller
public class SigninController {

    private static final Logger logger = Logger.getLogger(SigninController.class);

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String signin(@Valid @ModelAttribute("account") Account account, BindingResult result, HttpSession session, ModelMap modelMap){

    	System.out.println("hejo");
        modelMap.addAttribute("loginfailed", "true");
        return "signin";

    }
    
    

    @RequestMapping(value = "/signinfailed", method = RequestMethod.POST)
    public String signinFailed(ModelMap modelMap) {

        logger.info("login failed");
        modelMap.addAttribute("loginfailed", true);
        return "signin";
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String error403(ModelMap modelMap) {
        return "403";
    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logout(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        modelMap.addAttribute("logout", "true");
        return "index";
    }

}

package com.usugy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by tomek on 2016-09-08.
 */

@Controller
public class SigninController {

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String signin(ModelMap modelMap) {

        return "signin3";
    }

    @RequestMapping(value = "/signinFailed", method = RequestMethod.GET)
    public String signinFailed(ModelMap modelMap) {

        modelMap.addAttribute("error", "true");
        return "signin3";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap modelMap) {

        return "logout";
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String error403(ModelMap modelMap) {
        return "403";
    }
}

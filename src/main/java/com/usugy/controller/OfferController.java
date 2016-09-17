package com.usugy.controller;

import com.usugy.model.Account;
import com.usugy.model.Offer;
import com.usugy.model.OfferReport;
import com.usugy.service.OfferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by tomek on 2016-08-29.
 */
@Controller
public class OfferController {

    @Autowired
    private OfferService offerService;

    @RequestMapping(value = "/offers", method = RequestMethod.GET)
    public String listOffers(Model model) {
        List<Offer> offers = offerService.findAllOffers();

        model.addAttribute("offers", offers);
        return "listoffers";
    }

    @RequestMapping(value = "/addoffer", method = RequestMethod.GET)
    public String addOffer(Model model) {

        Offer offer = new Offer();
        model.addAttribute("offer", offer);
        return "addoffer";

    }

//    preauthorize jest odpowiednikiem intercept w security-config
    @PreAuthorize("hasRole('ROLE_SERVICE')")
    @RequestMapping(value = "/addoffer", method = RequestMethod.POST)
    public String addOffer(@Valid @ModelAttribute("offer") Offer offer, BindingResult result, HttpSession session) {
        if(result.hasErrors())
        {
            return "addoffer";
        }
        else {
            Account account = (Account)session.getAttribute("account");
            offer.setAccount(account);
            offerService.save(offer);
        }

        return "redirect:/";
    }

    @RequestMapping(value = "/offerreport", method = RequestMethod.GET)
    public String offerReport(Model model) {
        List<OfferReport> offerReports = offerService.findAllOfferReports();

        model.addAttribute("offerReports", offerReports);

        return "offerreports";
    }
}



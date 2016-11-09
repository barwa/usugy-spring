package com.usugy.controller;

import com.usugy.model.Account;
import com.usugy.model.Offer;
import com.usugy.model.OfferReport;
import com.usugy.service.OfferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
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
        return "listoffers2";
    }

    @RequestMapping(value = "showoffer", method = RequestMethod.GET)
    public String showOffer(Model model) {

        Offer offer = offerService.findbyId(17L);

        model.addAttribute("offer", offer);
        return "showoffer";
    }

    @RequestMapping(value = "/addoffer", method = RequestMethod.GET)
    public String addOffer(Model model, HttpSession session) {
        Offer offer = (Offer)session.getAttribute("offer");
        if(offer == null) {
             offer = new Offer();
        }
        model.addAttribute("offer", offer);
        return "addoffer2";

    }

//    preauthorize jest odpowiednikiem intercept w security-config
//    @PreAuthorize("hasRole('ROLE_SERVICE')")
    @RequestMapping(value = "/addoffer", method = RequestMethod.POST)
    public String addOffer(@Valid @ModelAttribute("offer") Offer offer, BindingResult result, HttpSession session) {
        if(result.hasErrors())
        {
            return "addoffer2";
        }
        else {
            Account account = (Account) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            offer.setAccount(account);
            offer.setDescription(offer.getDescription().replaceAll("\n", "<br>"));
            offerService.save(offer);
        }

        return "redirect:/showoffer";
    }

    @RequestMapping(value = "/offerreport", method = RequestMethod.GET)
    public String offerReport(Model model) {
        List<OfferReport> offerReports = offerService.findAllOfferReports();

        model.addAttribute("offerReports", offerReports);

        return "offerreports";
    }
}



package com.usugy.service;

import com.usugy.model.Offer;
import com.usugy.model.OfferReport;
import com.usugy.repository.OfferRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tomek on 2016-08-30.
 */

@Service
@EnableTransactionManagement
public class OfferServiceImpl implements OfferService {

    @Autowired
    private OfferRepository offerRepository;

    @Transactional
    public Offer save(Offer offer) {
        return offerRepository.save(offer);
    }

    public List<Offer> findAllOffers() {
       return offerRepository.findAll();
    }

    public List<OfferReport> findAllOfferReports() {
        return offerRepository.findAllOfferReports();
    }
}

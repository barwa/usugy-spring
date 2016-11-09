package com.usugy.service;

import com.usugy.model.Offer;
import com.usugy.model.OfferReport;

import java.util.List;

/**
 * Created by tomek on 2016-08-30.
 */
public interface OfferService {

    Offer save(Offer offer);
    Offer findbyId(Long id);
    List<Offer> findAllOffers();

    List<OfferReport> findAllOfferReports();
}

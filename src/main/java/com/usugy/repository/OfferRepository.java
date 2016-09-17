package com.usugy.repository;

import com.usugy.model.Offer;
import com.usugy.model.OfferReport;
import org.springframework.cglib.core.internal.LoadingCache;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tomek on 2016-08-30.
 */

public interface OfferRepository extends  JpaRepository<Offer,Long> {

    @Query("Select new com.usugy.model.OfferReport(a.firstname, a.lastname, o.title, o.description) " +
            "from Offer o, Account a where o.account.id = a.id")
    List<OfferReport> findAllOfferReports();
}

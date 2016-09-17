//package com.usugy.repository;
//
//import com.usugy.model.Offer;
//import com.usugy.model.OfferReport;
//import org.springframework.stereotype.Repository;
//
//import javax.persistence.EntityManager;
//import javax.persistence.PersistenceContext;
//import javax.persistence.Query;
//import javax.persistence.TypedQuery;
//import java.util.List;
//
///**
// * Created by tomek on 2016-08-30.
// */
//
//@Repository
//public class NotNeededOfferRepositoryImpl implements OfferRepository {
//
//    @PersistenceContext
//    EntityManager em;
//
//    public Offer save(Offer offer) {
//        em.persist(offer);
//        em.flush();
//        return offer;
//    }
//
//    public List<Offer> loadAll() {
//
////        Query query = em.createQuery("Select o from Offer o");
////        List offers = query.getResultList();
//
//        TypedQuery<Offer> query = em.createNamedQuery(Offer.FIND_ALL_OFFERS, Offer.class);
//        return query.getResultList();
//    }
//
//    public List<OfferReport> findAllOfferReports() {
//
////        Query query = em.createQuery("Select new com.usugy.model.OfferReport(a.firstname, a.lastname, o.title, o.description) " +
////                                    "from Offer o, Account a where o.account.id = a.id");
//
//        TypedQuery<OfferReport> query = em.createNamedQuery(Offer.FIND_OFFER_REPORTS, OfferReport.class);
//        return query.getResultList();
//    }
//}

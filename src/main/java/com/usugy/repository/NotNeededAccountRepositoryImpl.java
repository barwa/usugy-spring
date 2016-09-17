//package com.usugy.repository;
//
//import com.usugy.model.Account;
//import org.springframework.stereotype.Repository;
//
//import javax.persistence.EntityManager;
//import javax.persistence.PersistenceContext;
//
///**
// * Created by tomek on 2016-08-28.
// */
//
//@Repository
//public class NotNeededAccountRepositoryImpl implements AccountRepository {
//
//    @PersistenceContext
//    private EntityManager em;
//
//    public Account save(Account account) {
//        if(account.getId() == null) {
//            em.persist(account);
//            em.flush();
//        }
//        else {
//            account = em.merge(account);
//        }
//        return account;
//    }
//}

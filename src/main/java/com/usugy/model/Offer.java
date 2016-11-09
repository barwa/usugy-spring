package com.usugy.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

/**
 * Created by tomek on 2016-08-29.
 */

@Entity
//@NamedQueries({
//        @NamedQuery(name=Offer.FIND_OFFER_REPORTS, query = "Select new com.usugy.model.OfferReport(a.firstname, a.lastname, o.title, o.description) " +
//                "from Offer o, Account a where o.account.id = a.id"),
//        @NamedQuery(name = Offer.FIND_ALL_OFFERS, query = "Select o from Offer o")
//})
public class Offer {

    public static final String FIND_OFFER_REPORTS="findOfferReports";
    public static final String FIND_ALL_OFFERS="findAllOffers";

    @Id
    @GeneratedValue
    private Long id;

    @NotEmpty
    private String title;
    @NotEmpty
    private String shortdesc;
    @NotEmpty
    private String description;

    @ManyToOne
    private Account account;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShortdesc() {
        return shortdesc;
    }

    public void setShortdesc(String shortdesc) {
        this.shortdesc = shortdesc;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
}

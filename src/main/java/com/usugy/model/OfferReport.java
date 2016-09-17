package com.usugy.model;

/**
 * Created by tomek on 2016-08-30.
 */
public class OfferReport {

    private String accountFirstname;
    private String accountLastname;
    private String offerTitle;
    private String offerDescription;

    public OfferReport(String accountFirstname, String accountLastname, String offerTitle, String offerDescription) {
        this.accountFirstname = accountFirstname;
        this.accountLastname = accountLastname;
        this.offerTitle = offerTitle;
        this.offerDescription = offerDescription;
    }

    public String getAccountFirstname() {
        return accountFirstname;
    }

    public void setAccountFirstname(String accountFirstname) {
        this.accountFirstname = accountFirstname;
    }

    public String getAccountLastname() {
        return accountLastname;
    }

    public void setAccountLastname(String accountLastname) {
        this.accountLastname = accountLastname;
    }

    public String getOfferTitle() {
        return offerTitle;
    }

    public void setOfferTitle(String offerTitle) {
        this.offerTitle = offerTitle;
    }

    public String getOfferDescription() {
        return offerDescription;
    }

    public void setOfferDescription(String offerDescription) {
        this.offerDescription = offerDescription;
    }
}

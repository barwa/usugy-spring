//package com.usugy.model;
//
//import org.hibernate.validator.constraints.NotEmpty;
//import org.springframework.format.annotation.DateTimeFormat;
//
//import javax.persistence.Entity;
//import javax.persistence.Id;
//import javax.persistence.ManyToOne;
//import javax.persistence.OneToOne;
//import java.util.Calendar;
//import java.util.Date;
//
///**
// * Created by tomek on 2016-11-04.
// */
//@Entity
//public class Token {
//
//    // Reset tokens will expire after a day.
//    private static final int EXPIRATION_DAYS = 1;
//    public static final String ACTIVATE = "activate";
//    public static final String RESET = "reset";
//
//    @Id
//    private String token;
//
//    @DateTimeFormat
//    private Date dateCreated;
//
//    @NotEmpty
//    private String type;
//
//    @ManyToOne
//    private Account account;
//
//
//    public String getToken() {
//        return token;
//    }
//
//    public void setToken(String token) {
//        this.token = token;
//    }
//
//    public Date getDateCreated() {
//        return dateCreated;
//    }
//
//    public void setDateCreated(Date dateCreated) {
//        this.dateCreated = dateCreated;
//    }
//
//    public Account getAccount() {
//        return account;
//    }
//
//    public void setAccount(Account account) {
//        this.account = account;
//    }
//
//    public String getType() {
//        return type;
//    }
//
//    public void setType(String type) {
//        this.type = type;
//    }
//
//    /**
//     * @return a date before which the password link has expired.
//     */
//    private Date expirationTime() {
//        Calendar cal = Calendar.getInstance();
//        cal.set(Calendar.DATE, -EXPIRATION_DAYS);
//        return cal.getTime();
//    }
//
//    /**
//     * @return true if the reset token is too old to use, false otherwise.
//     */
//    public boolean isExpired() {
//        return dateCreated != null && dateCreated.before(expirationTime());
//    }
//
//
//}

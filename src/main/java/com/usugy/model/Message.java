package com.usugy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * Created by tomek on 2016-09-11.
 */

@Entity
public class Message {

    @Id
    @GeneratedValue
    private Long id;

    private Long SendingUser_Id;

    private Long ReceivingUser_Id;

    private String message;

    private Date time;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSendingUser_Id() {
        return SendingUser_Id;
    }

    public void setSendingUser_Id(Long sendingUser_Id) {
        SendingUser_Id = sendingUser_Id;
    }

    public Long getReceivingUser_Id() {
        return ReceivingUser_Id;
    }

    public void setReceivingUser_Id(Long receivingUser_Id) {
        ReceivingUser_Id = receivingUser_Id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}

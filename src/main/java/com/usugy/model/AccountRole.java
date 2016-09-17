package com.usugy.model;

import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;

/**
 * Created by tomek on 2016-09-02.
 */

@Entity
public class AccountRole implements GrantedAuthority {

    @Id
    @GeneratedValue
    private Long id;

    private String role;

    @ManyToOne
    private Account account;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getAuthority() {
        return getRole();
    }
}

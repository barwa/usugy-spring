package com.usugy.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.*;

/**
 * Created by tomek on 2016-08-24.
 */

@Entity
public class Account implements UserDetails {


    @Id

    @GeneratedValue
    private Long id;

    @NotEmpty
    @Email
    @Column(unique = true)
    private String email;

    @NotEmpty
    //    @Pattern(regex = "[0-9]+")
    private String firstname;

    @NotEmpty
    //     @Pattern(regex = "[0-9]+")
    private String lastname;

    //     @Pattern(regex = "[0-9]+")
    private String location;

    // @NotEmpty
    private String confirmationToken;

//    @NotEmpty
//    public String passwordHash;

    @NotEmpty
    private String password;

//    @Formats.DateTime(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date dateCreation;

    private Boolean validated = true;

    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    List<Offer> offers = new ArrayList<Offer>();

    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    Set<AccountRole> roles = new HashSet<AccountRole>();


    public List<Offer> getOffers() {
        return offers;
    }

    public void setOffers(List<Offer> offers) {
        this.offers = offers;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getConfirmationToken() {
        return confirmationToken;
    }

    public void setConfirmationToken(String confirmationToken) {
        this.confirmationToken = confirmationToken;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //    public String getPasswordHash() {
//        return passwordHash;
//    }
//
//    public void setPasswordHash(String passwordHash) {
//        this.passwordHash = passwordHash;
//    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    public Boolean getValidated() {
        return validated;
    }

    public void setValidated(Boolean validated) {
        this.validated = validated;
    }

    public Set<AccountRole> getRoles() {
        return roles;
    }

    public void setRoles(Set<AccountRole> roles) {
        this.roles = roles;
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
//        Set<GrantedAuthority> grantedAuthorities = new HashSet<GrantedAuthority>();
//
//        for (AccountRole role: this.getRoles())
//        {
//            grantedAuthorities.add(new (role.getRole()));
//        }
//        return grantedAuthorities;grantedAuthorities

          return this.getRoles();
    }

    public String getUsername() {
        return email;
    }

    public boolean isAccountNonExpired() {
        return validated;
    }

    public boolean isAccountNonLocked() {
        return validated;
    }

    public boolean isCredentialsNonExpired() {
        return validated;
    }

    public boolean isEnabled() {
        return validated;
    }
}

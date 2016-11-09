package com.usugy.repository;

import com.usugy.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * Created by tomek on 2016-08-28.
 */

public interface AccountRepository extends JpaRepository<Account, Long> {

    Account findByEmail(String email);
    @Query("SELECT a FROM Account a WHERE a.confirmationToken = ?1")
    Account findbyConfirmationToken(String confirmationToken);
}

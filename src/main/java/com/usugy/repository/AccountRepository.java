package com.usugy.repository;

import com.usugy.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * Created by tomek on 2016-08-28.
 */
public interface AccountRepository extends JpaRepository<Account, Long> {
//    Account save(Account account);

    Account findByEmail(String email);
}

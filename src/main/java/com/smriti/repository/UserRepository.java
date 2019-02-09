package com.smriti.repository;

import com.smriti.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query("SELECT u FROM User u WHERE u.status = 'Y' AND u.username = :username")
    User getUserByUsername(@Param("username") String username);

}


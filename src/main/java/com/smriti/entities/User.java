package com.smriti.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user")
@Getter
@Setter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name", nullable = false, length = 200)
    private String name;

    @Column(name = "username", length = 50)
    private String username;

    @Column(name = "password", length = 200)
    private String password;

    @Column(name = "email_address",length = 200)
    private String emailAddress;

    @Column(name = "status")
    private Character status;

    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
}



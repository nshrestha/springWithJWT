package com.smriti.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "user")
@Getter
@Setter
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 200)
    private String name;

    @Basic(optional = false)
    @Column(name = "username", length = 50)
    private String username;

    @Column(name = "password", length = 200)
    private String password;

    @Column(name = "email_address",length = 200)
    private String emailAddress;

    @Column(name = "active")
    private Character active;

    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
}



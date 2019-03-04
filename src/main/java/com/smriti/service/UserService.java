package com.smriti.service;

import com.smriti.entities.User;
import com.smriti.requestDTO.UserDTO;

import java.util.List;

public interface UserService {
    void saveUser (UserDTO userDTO);

    List<UserDTO> fetchAllUsers ();

    User getUserByUsername(String username);
}

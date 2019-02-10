package com.smriti.controller;

import com.smriti.constants.WebResourceKeyConstants;
import com.smriti.requestDTO.UserDTO;
import com.smriti.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = WebResourceKeyConstants.BASE_API + WebResourceKeyConstants.UserConstants.USER_BASE_API)
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping(value = WebResourceKeyConstants.UserConstants.SAVE)
    public ResponseEntity<Void> saveUser(@RequestBody UserDTO userDTO){
        userService.saveUser(userDTO);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @GetMapping(value = WebResourceKeyConstants.UserConstants.FETCH_ALL_USERS)
    public ResponseEntity<List<UserDTO>> fetchAllUsers(){
        return new ResponseEntity<>(userService.fetchAllUsers(), HttpStatus.OK);
    }
}

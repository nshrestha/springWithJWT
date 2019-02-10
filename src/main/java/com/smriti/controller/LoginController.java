package com.smriti.controller;

import com.smriti.requestDTO.LoginRequestDTO;
import com.smriti.responseDTO.LoginResponseDTO;
import com.smriti.service.LoginService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class LoginController {

    private final LoginService loginService;

    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    @PostMapping("/login")
    public ResponseEntity<LoginResponseDTO> loginUser(@RequestBody LoginRequestDTO requestDTO) {
        return new ResponseEntity<>(loginService.login(requestDTO), HttpStatus.OK);
    }

}

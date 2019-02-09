package com.smriti.service;

import com.smriti.requestDTO.LoginRequestDTO;
import com.smriti.responseDTO.LoginResponseDTO;

public interface LoginService {

    LoginResponseDTO login(LoginRequestDTO loginRequestDTO);

}

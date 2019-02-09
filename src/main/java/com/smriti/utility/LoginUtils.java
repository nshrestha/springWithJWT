package com.smriti.utility;

import com.smriti.entities.User;
import com.smriti.responseDTO.LoginResponseDTO;

import java.util.function.BiFunction;

public class LoginUtils {
    public static BiFunction<User, String, LoginResponseDTO> convertToLoginResponse = (user, jwtToken)->{
        LoginResponseDTO responseDTO = new LoginResponseDTO();

        responseDTO.setId(user.getId());
        responseDTO.setToken(jwtToken);
        return responseDTO;
    };
}

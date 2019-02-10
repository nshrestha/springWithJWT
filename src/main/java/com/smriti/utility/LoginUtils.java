package com.smriti.utility;

import com.smriti.entities.User;
import com.smriti.responseDTO.LoginResponseDTO;

public class LoginUtils {
//    public static BiFunction<User, String, LoginResponseDTO> convertToLoginResponse = (user, jwtToken)->{
//        LoginResponseDTO responseDTO = new LoginResponseDTO();
//
//        responseDTO.setId(user.getId());
//        responseDTO.setToken(jwtToken);
//        return responseDTO;
//    };
//
    public static LoginResponseDTO convertToLoginResponse (User user, String jwtToken){
        LoginResponseDTO responseDTO = new LoginResponseDTO();

        responseDTO.setId(user.getId());
        responseDTO.setToken(jwtToken);
        return responseDTO;
    }
}

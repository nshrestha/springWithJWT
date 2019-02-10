package com.smriti.utility;

import com.smriti.requestDTO.UserDTO;

import java.util.ArrayList;
import java.util.List;

public class UserUtils {

    public static List<UserDTO> convertToUserResponse(List<Object[]> objects) {
        final Integer NAME_INDEX = 0;
        final Integer EMAIL_ADDRESS_INDEX = 1;
        final Integer USERNAME_INDEX = 2;
        final Integer STATUS = 3;

        List<UserDTO> userDTOS = new ArrayList<>();

        objects.forEach(o -> {
            UserDTO userDTO = new UserDTO();
            userDTO.setName(o[NAME_INDEX].toString());
            userDTO.setEmailAddress(o[EMAIL_ADDRESS_INDEX].toString());
            userDTO.setUsername(o[USERNAME_INDEX].toString());
            userDTO.setStatus(o[STATUS].toString().charAt(0));

            userDTOS.add(userDTO);
        });
        return userDTOS;
    }
}

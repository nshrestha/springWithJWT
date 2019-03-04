package com.smriti.utility;

import com.smriti.requestDTO.UserDTO;

import java.util.function.Function;

public class UserUtils {

    public static Function<Object[], UserDTO> convertToUserResponse = (objects) -> {
        final Integer NAME_INDEX = 0;
        final Integer EMAIL_ADDRESS_INDEX = 1;
        final Integer USERNAME_INDEX = 2;
        final Integer STATUS_INDEX = 3;

        UserDTO userDTO = new UserDTO();

        userDTO.setName(objects[NAME_INDEX].toString());
        userDTO.setEmailAddress(objects[EMAIL_ADDRESS_INDEX].toString());
        userDTO.setUsername(objects[USERNAME_INDEX].toString());
        userDTO.setStatus(objects[STATUS_INDEX].toString().equalsIgnoreCase("Y")
                ? "Active" : "Inactive");

        return userDTO;
    };
}

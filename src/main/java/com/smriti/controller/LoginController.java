package com.smriti.controller;

import com.smriti.requestDTO.LoginRequestDTO;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

//    @PostMapping("/login")
//    public ResponseEntity<Void> getUser(@RequestBody LoginRequestDTO requestDTO){
////        boolean isUser = userService.loginUser(userdto);
////        UserTokenDto userTokenDto = new UserTokenDto();
////        if (isUser) {
////            userTokenDto = userTokenService.authToken(userdto);
////            return new ResponseEntity<UserTokenDto>(userTokenDto, HttpStatus.OK);
////        }
////        throw  new IncorrectPasswordException("User is not registered","null pointer occurred.");
//    }

}

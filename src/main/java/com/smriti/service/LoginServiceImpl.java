package com.smriti.service;

import com.smriti.entities.User;
import com.smriti.repository.UserRepository;
import com.smriti.requestDTO.LoginRequestDTO;
import com.smriti.responseDTO.LoginResponseDTO;
import com.smriti.utility.JWTTokenUtility;
import com.smriti.utility.LoginUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public LoginResponseDTO login(LoginRequestDTO loginRequestDTO) {

        User isUser = getUserByUsername(loginRequestDTO.getUserName());

//
//        checkIfUserExists.accept(isUser);
//        validatePassword.accept(isUser, loginRequestDTO);

        String jwtToken = JWTTokenUtility.generateJWTToken(isUser.getId());
        return LoginUtils.convertToLoginResponse(isUser, jwtToken);
    }

//    private Consumer<User> checkIfUserExists = (user -> {
//        if (Objects.isNull(user))
//            throw new UnauthorisedException("Username doesn't exists", "Username doesn't exists.");
//    });
//
//    private BiConsumer<User, LoginRequestDTO> validatePassword = (isUser, loginRequestDTO) -> {
//        if (!BCrypt.checkpw(loginRequestDTO.getPassword(), isUser.getPassword()))
//            throw new UnauthorisedException("Incorrect password.Forgot Password?", "Password didn't match.");
//    };

    private User getUserByUsername(String username) {
        return userRepository.getUserByUsername(username);
    }
}

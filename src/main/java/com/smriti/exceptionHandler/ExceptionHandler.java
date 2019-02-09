package com.smriti.exceptionHandler;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class ExceptionHandler {

    @org.springframework.web.bind.annotation.ExceptionHandler(UnauthorisedException.class)
    public ResponseEntity<ErrorResponse> handleUnauthorizedException(UnauthorisedException e) {
        e.printStackTrace();
        return new ResponseEntity<>(e.getErrorResponse(), HttpStatus.UNAUTHORIZED);
    }
}

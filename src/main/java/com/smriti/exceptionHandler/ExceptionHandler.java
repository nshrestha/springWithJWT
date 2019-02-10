package com.smriti.exceptionHandler;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ExceptionHandler {

    @org.springframework.web.bind.annotation.ExceptionHandler(UnauthorisedException.class)
    public ResponseEntity<ErrorResponse> handleUnauthorizedException(UnauthorisedException e) {
        e.printStackTrace();
        return new ResponseEntity<>(e.getErrorResponse(), HttpStatus.UNAUTHORIZED);
    }

    @org.springframework.web.bind.annotation.ExceptionHandler(NoContentFoundException.class)
    public ResponseEntity<ErrorResponse> handleNoContentFoundException
            (NoContentFoundException e) {
        e.printStackTrace();
        return new ResponseEntity<>(e.getErrorResponse(), HttpStatus.NO_CONTENT);
    }
}

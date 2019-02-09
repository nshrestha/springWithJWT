package com.smriti.utility;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;

import java.util.Date;

public class JWTTokenUtility {

    public static String generateJWTToken(Long userId) {
        Algorithm algorithm = Algorithm.HMAC256("secret");
        return JWT.create()
                .withClaim("userId", userId)
                .withIssuedAt(new Date())
                .withIssuer("auth0")
                .sign(algorithm);
    }
}

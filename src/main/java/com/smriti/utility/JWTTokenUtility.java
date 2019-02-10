package com.smriti.utility;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.smriti.exceptionHandler.UnauthorisedException;

import java.util.Date;
import java.util.Objects;

public class JWTTokenUtility {

    public static String generateJWTToken(Long userId) {
        Algorithm algorithm = Algorithm.HMAC256("secret");
        return JWT.create()
                .withClaim("userId", userId)
                .withIssuedAt(new Date())
                .withIssuer("auth0")
                .sign(algorithm);
    }

    public static DecodedJWT decodedJWT(String token, String secret) {

        Algorithm algorithm = Algorithm.HMAC256(secret);

        JWTVerifier verifier = JWT.require(algorithm)
                .withIssuer("auth0")
                .build(); //Reusable verifier instance

        DecodedJWT jwt = verifier.verify(token);

        if (Objects.isNull(jwt)) {
            throw new UnauthorisedException("Request not authorized, please contact system administrator.",
                    "Request jwt token doesn't matches.");
        }
        return jwt;
    }
}

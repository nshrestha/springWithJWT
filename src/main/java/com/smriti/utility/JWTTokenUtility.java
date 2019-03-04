package com.smriti.utility;

import com.smriti.entities.User;
import com.smriti.exceptionHandler.UnauthorisedException;
import io.jsonwebtoken.*;
import io.jsonwebtoken.impl.DefaultClock;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;

public class JWTTokenUtility {

    private final static Clock clock = DefaultClock.INSTANCE;
    private static int expiration = 604800;
    private final static String secret = "mySecret";

    public static String generateJWTToken(Long userId) {
        Map<String, Object> claims = new HashMap<>();
        return doGenerateToken(claims, userId);
    }

    public static String doGenerateToken(Map<String, Object> claims, Long userId) {
        final Date createdDate = clock.now();
        final Date expirationDate = calculateExpirationDate(createdDate);

        return Jwts.builder()
                .setClaims(claims)
                .setSubject(userId.toString())
                .setIssuedAt(createdDate)
                .setExpiration(expirationDate)
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    public static String resolveToken(HttpServletRequest req) {
        String bearerToken = req.getHeader("Authorization");
        if (!Objects.isNull(bearerToken) && bearerToken.startsWith("Bearer "))
            return bearerToken.substring(7, bearerToken.length());

        return null;
    }

    public static boolean validateToken(String token) {
        try {
            Jws<Claims> claims = Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(token);

            if (claims.getBody().getExpiration().before(new Date()))
                return false;

            return true;
        } catch (JwtException | IllegalArgumentException e) {
            throw new UnauthorisedException("Request not authorized, please contact system administrator.",
                    "Expired or invalid JWT token");
        }
    }

    public static String getUsernameFromToken(String token) {
        return getClaimFromToken(token, Claims::getSubject);
    }

    public static Date getExpirationDateFromToken(String token) {
        return getClaimFromToken(token, Claims::getExpiration);
    }

    public static <T> T getClaimFromToken(String token, Function<Claims, T> claimsResolver) {
        final Claims claims = getAllClaimsFromToken(token);
        return claimsResolver.apply(claims);
    }

    private static Claims getAllClaimsFromToken(String token) {
        return Jwts.parser()
                .setSigningKey(secret)
                .parseClaimsJws(token)
                .getBody();
    }

    public static Date calculateExpirationDate(Date createdDate) {
        return new Date(createdDate.getTime() + expiration * 1000);
    }

    public static Boolean validateToken(String token, User userDetails) {
        final String username = getUsernameFromToken(token);
        return (
                username.equals(userDetails.getUsername())
                        && !isTokenExpired(token)
        );
    }

    private static Boolean isTokenExpired(String token) {
        final Date expiration = getExpirationDateFromToken(token);
        return expiration.before(clock.now());
    }
}

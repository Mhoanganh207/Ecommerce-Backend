package com.example.demo.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.example.demo.dto.LoginResponse;
import com.example.demo.entity.Customer;

@Component
public class JwtService {

    @Value("${jwt.secret}")
    private String secretKey;

    public String issue(int userId, String email, List<String> roles, int time) {
        return JWT.create()
                .withClaim("userId", userId)
                .withClaim("email", email)
                .withArrayClaim("roles", roles.toArray(new String[0]))
                .withExpiresAt(new Date(System.currentTimeMillis() + time))
                .sign(Algorithm.HMAC256(secretKey));
    }

    public LoginResponse generateToken(Customer customer) {
        String accessToken = issue(customer.getId(), customer.getEmail(),
                List.of("USER"), 1000 * 60 * 60 * 24);
        String refreshToken = issue(customer.getId(), customer.getEmail(),
                List.of("USER"), 1000 * 60 * 60 * 24 * 30);

        return new LoginResponse(accessToken, refreshToken);
    }

}

package com.example.sessionlogin.controllers;import jakarta.servlet.http.HttpSession;import org.springframework.http.ResponseEntity;import org.springframework.web.bind.annotation.GetMapping;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RestController;@RestController@RequestMapping("/session")public class SessionController {    @GetMapping("/id")    public ResponseEntity<String> id(HttpSession session) {        return ResponseEntity.ok(session.getId());    }}
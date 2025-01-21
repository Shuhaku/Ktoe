package com.example.ktoe.controllers;

import com.example.ktoe.models.Dummy;
import com.example.ktoe.services.DummyService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dummy")
public class DummyController {
    private DummyService dummyService;

    public DummyController(DummyService dummyService) {
        this.dummyService = dummyService;
    }

    @PostMapping("/create")
    public ResponseEntity<String> createMember(@RequestBody Dummy dummy) {
        boolean isCreated = dummyService.createDummy(dummy);
        if (isCreated) {
            return ResponseEntity.ok("Dummy created successfully!");
        } else {
            return ResponseEntity.badRequest().body("Failed to create dummy.");
        }
    }
}
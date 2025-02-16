package com.example.ktoe.controllers.api;import com.example.ktoe.models.Member;import com.example.ktoe.services.MemberService;import org.springframework.http.ResponseEntity;import org.springframework.web.bind.annotation.GetMapping;import org.springframework.web.bind.annotation.PostMapping;import org.springframework.web.bind.annotation.RequestBody;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.bind.annotation.RestController;@RestController@RequestMapping("/member")public class MemberController {    private MemberService memberService;    public MemberController(MemberService memberService) {        this.memberService = memberService;    }    @GetMapping("/hello")    public ResponseEntity<String> hello() {        return ResponseEntity.ok("Hello, World!");    }    @PostMapping("/create")    public ResponseEntity<String> createMember(@RequestBody Member member) {        boolean isCreated = memberService.createMember(member);        if (isCreated) {            return ResponseEntity.ok("Member created successfully!");        } else {            return ResponseEntity.badRequest().body("Failed to create member.");        }    }}
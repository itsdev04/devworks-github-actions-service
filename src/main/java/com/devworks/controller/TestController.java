package com.devworks.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class TestController {
  @GetMapping("/welcome")
  public ResponseEntity<String> welcome() {
    return new ResponseEntity<>("Welcome to the Github Actions demo application!", HttpStatus.OK);
  }
}

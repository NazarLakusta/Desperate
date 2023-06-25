package com.car4you.controller;

import com.car4you.model.UserEntity;
import com.car4you.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.validation.Valid;

@Controller
public class SignUpController {

    @Autowired
    UserService userService;


    @PostMapping("/addUser")
    private String save(@ModelAttribute("user") @Valid @RequestBody UserEntity user)
    {
        userService.saveUser(user);
        return "redirect:/signIn";
    }

    @GetMapping("/addUser")
    public String createUserPage(){
        return "/userspack/createUser";
    }
}

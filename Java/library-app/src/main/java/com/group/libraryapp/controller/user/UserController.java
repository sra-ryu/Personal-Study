package com.group.libraryapp.controller.user;

import com.group.libraryapp.domain.user.User;
import com.group.libraryapp.dto.user.request.UserCreateRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class UserController {

    // List for save user information
    private final List<User> users = new ArrayList<>();

    /*
    * todo: register user
    *
    * HTTP Method: POST
    * HTTP Path:   /user
    * HTTP Body:   name, age(JSON)
    * return nothing(void)
    * */
    @PostMapping("/user")
    public void saveUser(@RequestBody UserCreateRequest request) {
        users.add(new User(request.getName(), request.getAge()));
    }
}

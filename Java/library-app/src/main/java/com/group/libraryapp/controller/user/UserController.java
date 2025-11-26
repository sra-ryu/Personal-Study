package com.group.libraryapp.controller.user;

import com.group.libraryapp.domain.user.User;
import com.group.libraryapp.dto.user.request.UserCreateRequest;
import com.group.libraryapp.dto.user.response.UserResponse;
import org.springframework.web.bind.annotation.GetMapping;
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

    /* todo: get user information
    *
    * HTTP Method: GET
    * HTTP Path:   /user
    * Query:       no query here
    * return:      id, name, age(JSON)
     */
    @GetMapping("/user")
    public List<UserResponse> getUsers() {
        List<UserResponse> responses = new ArrayList<>();
        for (int i = 0; i < users.size(); i++) {
            responses.add(new UserResponse(i + 1, users.get(i)));
        }
        return responses;
    }
}

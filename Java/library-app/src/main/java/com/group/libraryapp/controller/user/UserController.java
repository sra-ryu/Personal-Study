package com.group.libraryapp.controller.user;

import com.group.libraryapp.domain.user.User;
import com.group.libraryapp.dto.user.request.UserCreateRequest;
import com.group.libraryapp.dto.user.request.UserUpdateRequest;
import com.group.libraryapp.dto.user.response.UserResponse;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class UserController {

    // jdbcTemplate for save data in mysql
    private final JdbcTemplate jdbcTemplate;

    public UserController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    /*
    * todo: register user
    *
    * HTTP Method: POST
    * HTTP Path:   /user
    * HTTP Body:   name, age(JSON)
    * return:      X (HTTP status)
    *
    * */
    @PostMapping("/user")
    public void saveUser(@RequestBody UserCreateRequest request) {
        String sql = "INSERT INTO user (name, age) VALUES(?, ?)";
        jdbcTemplate.update(sql, request.getName(), request.getAge());
    }

    /*
    * todo: get user information
    *
    * HTTP Method: GET
    * HTTP Path:   /user
    * Query:       no query here
    * return:      id, name, age(JSON)
    *
    * */
    @GetMapping("/user")
    public List<UserResponse> getUsers() {
        String sql = "SELECT * FROM user";
        // RowMapper: get result of query - here id, name, age and return UserResponse
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            long id = rs.getLong("id");
            String name = rs.getString("name");
            int age = rs.getInt("age");
            return new UserResponse(id, name, age);
        });
    }

    /*
    * todo: update user name
    *
    * HTTP Method: PUT
    * HTTP Path:   /user
    * HTTP Body:   JSON(id, name)
    * return:      X (HTTP status)
    *
    * */
    @PutMapping("/user")
    public void updateUser(@RequestBody UserUpdateRequest request) {
        String sql = "UPDATE user SET name = ? WHERE id = ?";
        jdbcTemplate.update(sql, request.getName(), request.getId());
    }

    /*
     * todo: delete user
     *
     * HTTP Method: DELETE
     * HTTP Path:   /user
     * query:       String name
     * return:      X (HTTP status)
     *
     * */
    @DeleteMapping("/user")
    public void deleteUser(@RequestParam String name) {
        String sql = "DELETE FROM user WHERE name = ?";
        jdbcTemplate.update(sql, name);
    }

}

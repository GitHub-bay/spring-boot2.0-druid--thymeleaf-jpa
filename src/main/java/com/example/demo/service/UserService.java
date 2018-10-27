package com.example.demo.service;

import com.example.demo.domain.User;

import java.util.List;

public interface UserService {
    List<User> getUserList();

    User findUserById(Integer id);

    void save(User user);

    void edit(User user);

    void deleteById(Integer id);
}

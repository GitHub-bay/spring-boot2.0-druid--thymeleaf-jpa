package com.example.demo.service;

import com.example.demo.domain.User;
import com.example.demo.domain.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getUserList(){
        return userRepository.findAll();
    }

    @Override
    public User findUserById(Integer id){
        return userRepository.findById(id);
    }

    @Override
    public void save(User user){
        userRepository.save(user);
    }

    @Override
    public void edit(User user){
        userRepository.save(user);
    }

    @Override
    public void deleteById(Integer id){
        userRepository.deleteById(id);
    }
}

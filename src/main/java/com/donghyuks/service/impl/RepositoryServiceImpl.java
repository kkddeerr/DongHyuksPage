package com.donghyuks.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.donghyuks.domain.User;
import com.donghyuks.repository.UserRepository;
import com.donghyuks.service.RepositroyService;


@Service
public class RepositoryServiceImpl implements RepositroyService {
	
	public RepositoryServiceImpl() {
	
	}
	
	@Autowired
	private UserRepository userRepository;
	
	public User login(String loginid, String password) {
		return userRepository.findByLoginidAndPassword(loginid, password);
	}
	
}

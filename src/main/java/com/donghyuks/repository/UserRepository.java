package com.donghyuks.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.donghyuks.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByLoginidAndPassword(String loginid, String password);
}

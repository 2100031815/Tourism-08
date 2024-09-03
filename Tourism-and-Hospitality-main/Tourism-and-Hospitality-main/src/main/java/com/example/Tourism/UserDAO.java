package com.example.Tourism;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDAO extends JpaRepository<User, Long>{
	User findByEmail(String email);

}

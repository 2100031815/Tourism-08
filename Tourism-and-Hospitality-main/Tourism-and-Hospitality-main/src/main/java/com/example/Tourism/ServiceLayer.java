package com.example.Tourism;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceLayer {

	@Autowired
	private FoodDAO fdao;
	@Autowired
	private UserDAO udao;
	@Autowired
	private HotelDAO hdao;
	
	public List<Food> getAllOrders() {
		return fdao.findAll();
	}
	
	public List<User> getAllUsers() {
		return udao.findAll();
	}

	public List<Hotel> getAllHotels() {
		return hdao.findAll();
	}
}

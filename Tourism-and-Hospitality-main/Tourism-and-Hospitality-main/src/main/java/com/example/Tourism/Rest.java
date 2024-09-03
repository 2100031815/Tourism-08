package com.example.Tourism;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class Rest {

    private final UserDAO repo;
    private final FoodDAO fdao;
    private final HotelDAO hdao;
    private final ServiceLayer sl;
    
    @Autowired
    public Rest(UserDAO repo, FoodDAO fdao, HotelDAO hdao, ServiceLayer sl) {
        this.repo = repo;
        this.fdao = fdao;
        this.hdao = hdao;
        this.sl = sl;
    }

    @GetMapping("/")
    public String home() {
        return "home";
    }
    
    @GetMapping("/admin")
    public String admin() {
    	return "adminhome";
    }

    @PostMapping("/home")
    public String loginValid(@ModelAttribute User user) {
    	if(user!=null && user.getEmail().equals("admin@gmail.com") && user.getPassword().equals("admin@123")) {
    		return "adminhome";
    	}
    	User us = repo.findByEmail(user.email);
    	if(us!=null && us.getPassword().equals(user.getPassword())) {
    		return "home";
    	}
    	return "redirect:/register";
    }
    
    @GetMapping("/food")
    public String food() {
        return "food";
    }

    @GetMapping("/register")
    public String register() {
        //model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/login")
    public String registerUser(@ModelAttribute User user) {
        // Save the user to the database
        repo.save(user);
        return "register";
    }
    
    @PostMapping("/foodSave")
    public String orderList(@ModelAttribute Food order, Model m) {
    	System.out.println(order.name);
    	fdao.save(order);
    	return "orderSuccess";
    }
    
    @PostMapping("/saveBooking")
    public String hotelList(@ModelAttribute Hotel hotel, Model m) {
    	hdao.save(hotel);
    	return "orderSuccess";
    }
    
    @GetMapping("/orders")
    public String getAllOrders(Model m) {
    	List<Food> items = sl.getAllOrders();
    	m.addAttribute("items", items);
    	return "orders";
    }
    
    @GetMapping("/hotels")
    public String getAllHotels(Model m) {
    	List<Hotel> hotels = sl.getAllHotels();
    	m.addAttribute("hotels", hotels);
    	return "hotels";
    }
    
    @GetMapping("/users")
    public String getAllUsers(Model m) {
    	List<User> users = sl.getAllUsers();
    	m.addAttribute("users", users);
    	return "users";
    }

    @GetMapping("/travelregistration")
    public String travelregistration() {
        return "travelregistration";
    }

    @GetMapping("/refreshment")
    public String refreshment() {
        return "refreshment";
    }

    @GetMapping("/room")
    public String room() {
        return "room";
    }

    @GetMapping("/checkin")
    public String checkin() {
        return "checkin";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }
    
    @GetMapping("/todo")
    public String todo() {
    	return "todo";
    }  
}

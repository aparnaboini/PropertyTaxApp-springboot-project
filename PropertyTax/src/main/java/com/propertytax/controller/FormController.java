package com.propertytax.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.propertytax.repository.FormRepo;
import com.propertytax.models.FormData;

@Controller
public class FormController {
	
	@SuppressWarnings("unused")
	@Autowired
	private FormRepo repo;
	
//	@GetMapping("/data")
//	public List<FormData> getData(){
//		return repo.findAll();
//	}
	
	@RequestMapping(value="home")
	public String getHome() {
		return "home";
	}
	@GetMapping("/register")
    public String showform(Model model){   
		FormData f=new FormData();
		model.addAttribute("data",f);
		return "form";
		
	}
    
    @PostMapping("/register")
    public String saveform(@ModelAttribute("data") FormData formData) {
    	repo.save(formData);
		return "home";

    }
    
    @GetMapping("/list")
    public String getTotal(Model model){
    	ArrayList sums=new ArrayList<Double>();
    	sums.add(repo.sumTotal('A',"Owner"));
    	sums.add(repo.sumTotal('A', "Tenented"));
    	sums.add(repo.sumTotal('B',"Owner"));
    	sums.add(repo.sumTotal('B', "Tenented"));
    	sums.add(repo.sumTotal('C',"Owner"));
    	sums.add(repo.sumTotal('C', "Tenented"));
    	model.addAttribute("totals",sums);
    	return "data";
    }
	
}

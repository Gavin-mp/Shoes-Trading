package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.ShoesMapping;
import com.niit.pojo.Shoes;

@Service
public class ShoesService {
	
	@Autowired
	private ShoesMapping shoesMapping;
	
	public void insertServiceShoes(Shoes newshoes) {
		shoesMapping.insertShoes(newshoes);
	}
	
	public List<Shoes> selectServiceAllShoes(){
		return shoesMapping.selectAllShoes();
	}
	
	public void deleteServiceShoes(int shoesid) {
		shoesMapping.deleteShoes(shoesid);
	}
	
	public Shoes selectServiceShoes(int shoesid) {
		return shoesMapping.selectShoes(shoesid);
	}
	
	public void updteServiceShoes(String new40,String new41,String new42,String new43,String new44,String new45,String new46,String newprice,String shoesimg) {
		shoesMapping.updteShoes(new40, new41, new42, new43, new44, new45, new46, newprice, shoesimg);
	}
	
	public Shoes selectServiceImgShoes(String shoesimg) {
		return shoesMapping.selectImgShoes(shoesimg);
	}
	
	public List<Shoes> findServiceShoes(String fshoesname){
		return shoesMapping.findShoes(fshoesname);
	}
	
	public List<String> selectServiceShoesClass(){
		return shoesMapping.selectShoesClass();
	}
}

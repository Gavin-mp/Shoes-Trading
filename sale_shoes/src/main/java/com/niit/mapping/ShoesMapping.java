package com.niit.mapping;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.Shoes;

public interface ShoesMapping {
	public void insertShoes(Shoes newshoes);
	
	public List<Shoes> selectAllShoes();
	
	public void deleteShoes(int shoesid);
	
	public Shoes selectShoes(int shoesid);
	
	public void updteShoes(@Param("new40")String new40,@Param("new41")String new41,@Param("new42")String new42,@Param("new43")String new43,@Param("new44")String new44,@Param("new45")String new45,@Param("new46")String new46,@Param("newprice")String newprice,@Param("shoesimg")String shoesimg);
	
	public Shoes selectImgShoes(String shoesimg);
	
	public List<Shoes> findShoes(String fshoesname);
	
	public List<String> selectShoesClass();
	
}

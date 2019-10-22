package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class FoodExecute {

	public static void main(String[] args) {
		List<Food> menus = new ArrayList<Food>();
		Food.addMenu(menus,"치킨  ",20000,"JMT");
		Food.addMenu(menus,"맥주  ",5000,"500cc");
		Food.addMenu(menus,"소주  ",4000,"330cc");
		Food.addMenu(menus,"닭갈비",15000,"1인분");
		Food.addMenu(menus,"공기밥",1000,"1공기");
		
		for(Food f : menus){
		System.out.println(f);
		}
	}
}

package com.bdi.test.test01;

import java.util.HashMap;
import java.util.Map;

public class Member {

	public static void neker(Map<String,String> map) {
		map.put("a","b");
		// 새로운 메소드에 뭔가 쓰고싶으면 그 파라미터를 넣어준다(호출)
	}
	public static void test(Map<String,String> map) {
		map.put("a","b");
		int a = map.size();
		System.out.println(map);
		neker(map);
	}
	
	public static void main(String[] args) {
		Map<String,String> map = new HashMap<String,String>();
			test(map);
		
	}
}

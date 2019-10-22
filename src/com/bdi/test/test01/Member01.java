package com.bdi.test.test01;

import java.util.ArrayList;
import java.util.List;

public class Member01 {
	int a; // 이건 접근제어자가 디폴트(예약어 디폴트 아님/인터페이스에서만 씀)
	// 클래스 안에 있으면서 다른영역에 포함되있지 않은것은 접근제어자 가능
	public String test(int a) {
		return "abc";
	}
	
	public static String test() {
		String str = "abc";
		String str1 = "bbc";
		return str;
	}
	
	public static void main(String[] args) { // main은 접근제어자 안됨
		String str = "abc"; // 접근제어자가 디폴트가 아니라 없는것임
		str = test(); // test에 접근한게 아니라 return값에 접근한것
		test().equals("abc");
		final String str1 = test(); // final은 접근제어자가 아님
		
		// static영역에서는 비static 사용불가
		// a = 10;
		// test(1);
		Member01 m = new Member01(); // class = 사용자 정의 데이터타입
		m.a = 10;
		m.test(1);
		
		List<Member01> mList = new ArrayList<Member01>();
		m.a = 10;
		mList.add(m);
		m.a = 20;
		mList.add(m);
		m.a = 30;
		mList.add(m);
		
		for(int i=0;i<mList.size();i++) {
			System.out.println(mList.get(i).a);
		}
		
	}
}

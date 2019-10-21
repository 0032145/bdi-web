package com.bdi.test.test01;

class Mother{
	int a = 3;
	
	Mother(){ 
		// 피상속 생성자의 파라미터값이 강제됐을때 상속받는 생성자도 같은 값을 받아야한다.
		// 또는 상속받는 생성자의 생략된 super() 파라미터에 같은 값을 넣어준다.
		System.out.println("엄마 생성자");
	}
	public void test() {
		System.out.println("엄마꺼");
	}
}


public class MethodTest extends Mother{
	String a = "123"; // 만일 변수가 오버라이딩 됐다면 a변수 중복으로 안됐어야함 
	
	MethodTest(int a){
		super(); // 생략 가능
		//생성자의 파라미터 값이 있더라도, super()의 파라미터가 없으면 피상속자의 기본 생성자를 받음
		super.test(); // 생성자 실행 이전에 상속을 읽고 내려옴
		System.out.println(this.a); // 생성자 실행 이전에 클래스를 읽고 내려옴
		System.out.println("아들 생성자");
	}
	
	public void test(int a, int b) {
		System.out.println(a+b);
	}
	
	public void test(int a, String b) {
		System.out.println(a+b);
	}
	
	public void test(String b,int a) {
		System.out.println(a+b);
	}
	
	public void test() {
		System.out.println("아들꺼");
	}
	
	public static void main(String[] args) {
		Mother mt = new MethodTest(1);
		// 생성자의 파라미터가 강제됐을경우 컴파일러가 기본 생성자를 만들지않아서 오류가 발생함
		// 따라서 같은 파라미터 값을 넣어줘야 함
		mt.test();
		System.out.println(mt.a); // 변수는 오버라이딩 되지않음
	}
}

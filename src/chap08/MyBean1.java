package chap08;

// java beans
// 클래스는 기본 생성자를 가지고 있어야 한다. 
// 클래스의 속성(property)들은 get, set 혹은 표준 명명법을 따르는 메서드들을 사용해 접근 할 수 있다.

// property :
// get(is), set 으로 시작하는 메소드에 의해 결정(필드와 헷갈리면 안됨)
// 메소드명에서 get(is), set을 제거하고 앞글자를 소문자로 바꾼 것이 속성명이다.

// 예) 아래 클래스의 get(is), set 메소드 4개 중 get, set를 제거하고
// 앞글자를 소문자로 바꾸면 name, age가 속성(property)이다.

// get 메소드는 속성 읽기
// set 메소드는는 속성 쓰기 

// is : get 메소드의 리턴 타입이 boolean이면 is로 변경가능

public class MyBean1 {
	// 필드
	private String name;
	private int age;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	

}

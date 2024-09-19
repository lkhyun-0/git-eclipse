package test0822;
public class Test0919{
	
	String str = "안녕";
	
   	public void test() {
   		 
   	}

	public static void main(String[] args) {
		System.out.println("안녕하세요");
		Test0919 t = new Test0919();
		System.out.println("t에 담긴 값은 ? " + t); // 클래스 이름과 위치값이 담김
		String aaa = t.str; // t.str : . 은  접근하다 ! 라는 의미 
		System.out.println("str에 담긴 값은 ? " + aaa);
		
		C c = new C();
		
		System.out.println("1에서 10까지의 합 : " + c.plus());
		
		D d = new D(); // 객체생성
		
		String str2 = d.compared(); // 변수에 넣어주고 > 변수에 넣지 않아도 출력되긴 함	
		System.out.println(str2); // 출력해보기
		 
	}	
}

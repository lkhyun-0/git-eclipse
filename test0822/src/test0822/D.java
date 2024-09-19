package test0822;

public class D {
	
	private int x = 6;
	
	public String compared() {
		
		String value = "";
		
		if (x < 5) {
			//System.out.println("작다"); 
			value = "작다";
		}
		
		else if(x > 5) {
			//System.out.println("크다"); // void 일때 
			value = "크다"; // 리턴값 String 이 있을 때
		}return value;
	} 
}

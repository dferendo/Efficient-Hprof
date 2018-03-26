
public class Test {

	public static void main(String args[]) {
		Test test = new Test();
		
		try {
		test.method2();
		} catch (Exception e) {

		}

		test.method1();
		}

	public void method1() {
		int variable1 = 8; 
	}

	public void method2() throws Exception {
		long variable2 = 10;

		throw new Exception();
	}
}

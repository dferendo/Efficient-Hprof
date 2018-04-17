
public class Demo {

    public static void main(String args[]) {
        Demo demo = new Demo();

        Calculate number1 = new Calculate(5, 10);
        Calculate number2 = new Calculate(10, 15);

        // Throws exception
        try {
            demo.throwExceptionIfNotEqual(number1, number2);
        } catch (Exception e) {
	    
        }

        // Does not throw exception
        try {
            demo.throwExceptionIfNotEqual(number1, number1);
        } catch (Exception e) {
	    
        }
	
	demo.doesNotThrowException(number1, number1);
    }

    public void throwExceptionIfNotEqual(Calculate x, Calculate y) throws Exception {
        int addValueX = x.add();
        int addValueY = y.add();

        if (addValueX != addValueY) {
            throw new Exception();
        }

    }

    public void doesNotThrowException(Calculate x, Calculate y) {
        int addValueX = x.add();
        int addValueY = y.add();

        if (addValueX != addValueY) {
            return;
        }

    }

}

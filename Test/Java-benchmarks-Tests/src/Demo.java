public class Demo {
    public static void main(String args[]) {
        Demo demo = new Demo();
        Calculate number1 = new Calculate(5, 10);
        Calculate number2 = new Calculate(10, 15);

        demo.multiChildMethod(number1, number2);

        // Throws exception
        try {
            demo.throwExceptionIfNotEqual(number1, number2);
        } catch (Exception e) {}

        demo.exceptionChildTest();
    }

    public void throwExceptionIfNotEqual(Calculate x, Calculate y) throws Exception {
        Calculate addition = new Calculate(x.add(), y.add());

        if (addition.x != addition.y)
            throw new Exception();
    }

    public void multiChildMethod(Calculate x, Calculate y) {
        Calculate addition = new Calculate(x.add(), y.add());
        Calculate multiply = new Calculate(x.mul(), y.mul());
        return;
    }

    public void exceptionChildTest() {
        return;
    }

}

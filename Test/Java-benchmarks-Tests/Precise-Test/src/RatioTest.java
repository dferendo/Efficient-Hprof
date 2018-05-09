
public class RatioTest {

    public static void main(String args[]) {
        // Timing
        final long startTime = System.currentTimeMillis();

        RatioTest ratio = new RatioTest();
        ObjectTest test;

        int totalObjects = Integer.parseInt(args[1]);


        // Each limit + 1 in limit will add 5,000 method call
        // Each object there will be 2 method calls/return

        // This will create in total around 10 million method calls
        int methodLimit = 2250;
        // Depending on the number of objects passed, lower the total methods. Each object will have 2 method
        // call/return for an allocation
        methodLimit = methodLimit - (((int) (totalObjects * 2 / 5000)));

        if (methodLimit <= 0) {
            System.out.println("Ratio of objects:method cannot be done.");
            System.exit(1);
        }

        ratio.loopMethod(0, methodLimit);
        ratio.loopMethod2(0, methodLimit);

        for (int i = 0; i < totalObjects; i++) {
            test = new ObjectTest();
        }

        final long endTime = System.currentTimeMillis();
        System.out.println("Total execution time: " + (endTime - startTime) + "ms");
    }

    public void loopMethod(int currentCount, int limit) {
        if (currentCount > limit) {
            return;
        }
        callCallEmptyMethods1();
        callCallEmptyMethods2();
        callCallEmptyMethods3();
        callCallEmptyMethods4();
        callCallEmptyMethods5();
        callCallEmptyMethods6();
        callCallEmptyMethods7();
        callCallEmptyMethods8();
        callCallEmptyMethods9();
        callCallEmptyMethods10();
        loopMethod(currentCount + 1, limit);
    }

    public void loopMethod2(int currentCount, int limit) {
        if (currentCount > limit) {
            return;
        }
        callCallEmptyMethods1();
        callCallEmptyMethods2();
        callCallEmptyMethods3();
        callCallEmptyMethods4();
        callCallEmptyMethods5();
        callCallEmptyMethods6();
        callCallEmptyMethods7();
        callCallEmptyMethods8();
        callCallEmptyMethods9();
        callCallEmptyMethods10();
        loopMethod2(currentCount + 1, limit);
    }


    public void callCallEmptyMethods1() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods2() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods3() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods4() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods5() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods6() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods7() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods8() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods9() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callCallEmptyMethods10() {
        callEmptyMethods1();
        callEmptyMethods2();
        callEmptyMethods3();
        callEmptyMethods4();
        callEmptyMethods5();
        callEmptyMethods6();
        callEmptyMethods7();
        callEmptyMethods8();
        callEmptyMethods9();
        callEmptyMethods10();
    }

    public void callEmptyMethods1() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods2() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods3() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods4() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods5() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods6() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods7() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods8() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods9() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void callEmptyMethods10() {
        emptyMethod1();
        emptyMethod2();
        emptyMethod3();
        emptyMethod4();
        emptyMethod5();
        emptyMethod6();
        emptyMethod7();
        emptyMethod8();
        emptyMethod9();
        emptyMethod10();
    }

    public void emptyMethod1() {
        return;
    }

    public void emptyMethod2() {
        return;
    }

    public void emptyMethod3() {
        return;
    }

    public void emptyMethod4() {
        return;
    }

    public void emptyMethod5() {
        return;
    }

    public void emptyMethod6() {
        return;
    }

    public void emptyMethod7() {
        return;
    }

    public void emptyMethod8() {
        return;
    }

    public void emptyMethod9() {
        return;
    }

    public void emptyMethod10() {
        return;
    }


}

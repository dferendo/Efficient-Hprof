import java.util.Date;
import java.util.Stack;
import java.util.concurrent.ThreadLocalRandom;

/**
 * @author Dylan Frendo.
 */
public class Hello {

    public static void main(String args[]) {
        Hello hello = new Hello();
        Stack<Long> stack = new Stack<>();
        Long result = 0L;

        for (int i = 0; i < 10000; i++) {
            Long item = ThreadLocalRandom.current().nextLong();
            stack.push(item);
        }

        while (!stack.empty()) {
            Long nextItem = stack.pop();
            result += nextItem;
        }

        System.out.println(result);

        Stack<String> stackOfStrings = new Stack<>();
        String finalResult = "";

        for (int i = 0; i < 10000; i++) {
            stackOfStrings.push(generateString());
        }

        while (!stackOfStrings.empty()) {
            String nextItem = stackOfStrings.pop();
            finalResult += nextItem;
        }

        System.out.println(finalResult);
    }

    private static String generateString()
    {
        int length = ThreadLocalRandom.current().nextInt(0, 100);
        String characters = "QWERTYUIOPSADFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm0123456789\n";
        char[] text = new char[length];
        for (int i = 0; i < length; i++)
        {
            text[i] = characters.charAt(ThreadLocalRandom.current().nextInt(0, characters.length()));
        }
        return new String(text);
    }
}

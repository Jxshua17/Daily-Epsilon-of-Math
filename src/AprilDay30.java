public class AprilDay30 {

    public static void main(String[] args) {
        int number = 1001;
        int counter = 0;

        while (number != 10000) {
            String x = String.valueOf(number);
            StringBuilder y = new StringBuilder();

            for (int i = x.length() - 1; i > -1; i--) {
                y.append(x.charAt(i));
            }

            int convertedY = Integer.parseInt(String.valueOf(y));

            if ((number == convertedY) && (number % 3 == 0)) {
                counter++;
            }
            number++;
        }

        System.out.println(
            "the total number of four digit palindromes divisible by 3 is " +
                counter
        );
    }
}

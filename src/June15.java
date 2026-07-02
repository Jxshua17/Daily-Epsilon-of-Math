public class June15 {

    public static void main(String[] args) {
        String number = "23A8";

        int sum = 0;

        for (int i = 0; i <= 9; i++) {
            //You have to turn i into a string so that A in number can be replaced to perform the calculation.
            String y = String.valueOf(i);
            //Replacing A with the current number , i, in the loop.
            String newNumb = number.replace('A', y.charAt(0));
            //Turning newNumb to an integer because it is currently a string.
            int no = Integer.parseInt(newNumb);

            //checking if newNumb which is now stored in no, is divisible by 6 and if the condition is true, we add it to the sum variable.
            if (no % 6 == 0) {
                sum = sum + i;
            }
        }

        System.out.println(
            "the sum of all possible digits A such that the number 23A8 is divisible by 6 is " +
                sum
        );
    }
}

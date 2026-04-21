package Juju;

public class AprilDay21 {

    public static void main(String[] args) {
        int i = 1;

        float x = (float) 1 / 3; //fuck floats.
        double y = (double) 1 / 3; //yay doubles. lol
        double y1 = (double) 4 / 672;
        //it has been a while since i used floats and doubles so i have forgotten how much more accurate one is over the other.
        System.out.println(x);
        System.out.println(y);
        System.out.println(y1);
        //trying to see what the length is to determine at what point the decimal terminates in order to solve this question properly.
        //The length is 18 meaning y has 16 decimal places so i will be using this in the program i will write.
        System.out.println(String.valueOf(y).length());
        //the previous comment about the length being 18 isn't true because y1's length is 20
        System.out.println(String.valueOf(y1).length());

        int length = 18;

        while (length >= 18) {
            double z = (double) i / 672;
            length = String.valueOf(z).length();
            if (length >= 18) {
                i++;
            } else {
                System.out.println("the smallest possible integer, x, such that x/672 is a terminating decimal is "+i);
            }
        }
    }
}

import java.math.BigInteger;

public class Day23 {

    public static void main(String[] args) {

        //finding the fourth and fifth power of 23 which then casts our answer to type int because the type of the result of the pow() method is double.
        int h = (int) Math.pow(23, 5);
        int h1 = (int) Math.pow(23, 4);

        //finds the modulus of the results stored in the above variable.
        int i = h % 29;
        int i1 = h1 % 29;

        //multiplies the results.
        int c2 = (int) Math.pow(i, 5) * i1;

        //prints the result of c2 mod 29.
        System.out.println("the result of 23^29 mod 29 is " + c2%29);

    }
}

//that is right. i have to import ArrayList.
import java.util.*;

public class July4 {

    public static void main(String[] args) {
        System.out.println(
            "Setting up the program. all systems are a go for launch."
        );

        int x = 2;
        int l = 0; //a variable to keep track of the numbers that have three factors.
        ArrayList<Integer> arr = new ArrayList<>(); // a list to add all of the numbers that meet our condition.
        while (x != 51) {
            int k = 0; //this variable is for keeping track of the ammount of times x is divisble by a number i.e. a factor.

            //a for loop to check if there is any remainder when you divide x by all of the numbers from 1 to x.
            for (int j = 1; j <= x; j++) {
                if (x % j == 0) {
                    k++;
                }
            }

            //if k(the factor(s)) is equal to three, then you increment l by one and add x which is the number that meets this condition to the list.
            if (k == 3) {
                l++;
                arr.add(x);
            }

            //increment x by one to keep the while loop going.
            x++;
        }

        System.out.println(
            "The amount of numbers from 2 to 50 that have exactly 3 factors is " +
                l
        );
        System.out.println(
            "the set of numbers from 2 to 50 that have exactly 3 factors is " +
                arr
        );
    }
}

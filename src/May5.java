package Juju;

public class May5 {

    //this method checks for if there is a specified number is present in a long string of digits.
    public static boolean isNumberPresent(int number, char digit){
        String j = String.valueOf(number);
        boolean isPresent = false;

        for(int k=0;k<j.length();k++){
            if (j.charAt(k) == digit){
                isPresent = true;
                break;
            }
        }
        return isPresent;
    }

    public static void main(String[] args) {

        int counter = 0;

        for(int i=1;i<=100;i++){
            int n2 = i * i; //"i" is n while "n2" is n squared.

            int x = Integer.parseInt(Integer.toString(Integer.parseInt(String.valueOf(i), 10), 3));
            int y = Integer.parseInt(Integer.toString(Integer.parseInt(String.valueOf(n2), 10), 3));

            boolean b1 = isNumberPresent(x, '2');
            boolean b2 = isNumberPresent(y, '2');

            if (b1 || b2){
                System.out.println(".........");
            } else {
                counter++;
            }
        }

        System.out.println(counter);
    }
}

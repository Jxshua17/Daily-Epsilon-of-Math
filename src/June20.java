public class June20 {

    public static void main(String[] args) {
        int input = 1620;
        int total = 0;

        for (int l = 1; l <= input; l++) {
            if (l % 2 == 0 && input % l == 0) {
                total++;
            }
        }
        System.out.println(total);
    }
}

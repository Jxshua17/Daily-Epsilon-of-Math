#set page(
  paper: "a4",
  numbering: "1",
)

#show footnote.entry: set text(size:9pt)

//  TODO: figure out how to make separator of the footnote and the body longer than it is currently is.



#set text(size: 18pt)
#set align(center)
== Daily Epsilon

#set text(size:11pt)
My solutions to the daily maths problems from your Daily Epsilon of Math calender.
\
\
\
#set align(left)
#let alignRight(text) = {
  set align(center)
  [*#text*]
}
// #set footnote.entry(indent:-10em)

#let soln() = {
  set align(center)
  [_*Solution*_]
}

#alignRight[Day 9]
Find the number of digits in; $ 14^22 dot 7^-20 $
#soln()
#figure(
  image("18045.png", height:280pt),
  caption:[A screenshot of a toot of mine that i made on mastodon.],
)
Of course, stupid me didn't read the instructions. I just saw the the figures and i dived strsight into solving. i got to a point and i wondered to myself that this doesn't make any sense at all. I then checked and saw that i was supposed to find the number of digits in the _equation_.
\ A little simplification before jumping into finding the number of digits;
$ (7 dot 2)^22 dot 7^-20 $ 
$ (7^22 dot 2^22) dot 7^-20 $
$ "recall that : " && a^b + a^c = a^(b + c) $
$ #sym.therefore && (7^20 dot 7^2 dot 2^22) dot 7^-20 $
$ "recall that : " && (a^-1 = 1/a) $
$ #sym.therefore && (7^20 dot 7^2 dot 2^22) dot (1/7^20) $
$ (cancel(7^20) dot 7^2 dot 2^22) dot (1/cancel(7^20)) $
our simplification finally brings us here;
$ &= 7^2 dot 2^22 $
Now, to find the length of the result, the only way i know how to do this is by writing some code that computes the powers of these integers and then prints the length of the result. My language of choice here is java. Yes, java. python, you say? nah.

Here goes the java code;
```java
public class Epsilon {
    public static void main(String[] args) {
        int a = (int) Math.pow(7, 2);
        int b = (int) Math.pow(2, 22);

        int c = a * b;

        System.out.println(String.valueOf(c).length());
    }
}
```
I could inline the above code but it might make it difficult to look at than it already is if you are not familiar with the java programming language or programming in general.
#footnote[inlining is basically cleaning your code where instead of having multiple lines, you can just have a single line like this;
```java
public class Epsilon {
    public static void main(String[] args) {
        System.out.println(String.valueOf(Math.pow(7, 2) * Math.pow(2, 22)).length());
    }
}
```]
When you run this in an Integrated Development Environment(IDE) that supports java, the result you get is 9.
$ #sym.therefore && "the length of the result of " && 7^2 dot 2^22 & " is 9." $
\
#alignRight[Day 14]
$ (95 + 87)/(8 + 5) $
#soln()
i saw this problem and thought to myself, there had to be some catch that i am not aware of but there isn't actually. That's the question. Simplify, basically.
So this is pretty straightforward, you have to sum the numbers in the numerator as well as the denominator.

$ (95 + 87)/(8 + 5) = 182 / 13 = 14 $

#pagebreak()
#alignRight[Day 17]
$ x > 0 $
$ sqrt(21 - x) + sqrt(x + 32) = 9 $
#soln()
The first instinct here is to square both sides of course.
$ (sqrt(21 - x) + sqrt(x + 32))^2 = 9^2 $
Expanding the _R.H.S_ of the above equation yields;
#footnote[I made a big mistake here when i attempted this problem on paper. I forgot that there were two duplicate terms that should be together i.e. $ sqrt((21-x)(x+32)) $. It has been so long i did any serious math that i just made such serious error.]
$ (21 - x) + 2sqrt((21-x)(x+32)) + (x+32) = 81 $
$ 21 - cancel(x) +cancel(x)+32 + 2sqrt((21-x)(x+32)) = 81 $
$ 53 + 2sqrt((21-x)(x+32)) = 81 $
$ cancel(2)sqrt((21-x)(x+32)) = cancel(28) $
$ sqrt((21-x)(x+32)) = 14 $
squaring both sides;
$ (21-x)(x+32) = 196 $
Expanding the brackets;
$ 672 - 11x-x^2=196 $
$ x^2+11x-476=0 $


Using the Wolfram calculator;
#footnote[At this point, I decided not to _waste_ my time by doing the factorization looking for factors of 476 whose sums/differences resulted in -11 so i pulled up Wolfram's calculator]
//TODO try to increase the size of the image later if it appears in a new page which would mean that i would have to do preceeding problems.
#figure(
  image("day17.png", height:150pt),
  caption:[A screenshot of the results using Wolfram],
)

$ "Looking at Figure 2, we can see the results are" && x=-28,17 $
$ "since " && x>0 && "therefore " && x=17. $



//this for assigning shit to its own page. lol
#pagebreak()
#alignRight[*The order in which these problems were solved.*
]
- Day 14.
- Day 9.
- Day 17.

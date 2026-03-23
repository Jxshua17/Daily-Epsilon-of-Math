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

#alignRight[Day 7]
$ -4/3(x-25)=3/4(x+25) $
#soln()
Multiply both sides by 12;
$ cancel(12) dot -4/cancel(3)(x-25) = cancel(12) dot 3/cancel(4)(x+25) $
$ 4 dot -4(x-25) = 3 dot 3(x+25) $
$ -16(x-25) = 9(x+25) $
$ -16x+400 = 9x+225 $
$ -16x-9x=225-400 $
$ -25x=-175 $
$ x=7 $

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
#alignRight[Day 16]
find the number of integers that satisfy;
$ 5/y<=-0.3 $
#soln()
$ y/5<=-1/0.3 $
$ y<=-5/0.3 $
$ y<=-16.67 $
What is an integer? An integer is a whole number, meaning that it isn't a fraction. 0, -1, 2 are integers. 3.14, 2.713 aren't.
From this we can already tell that -16.67 isn't the answer we are looking for but rather, the number of whole numbers that satisfy the equation. \ 
Take _*-16*_: put it in the original equation and you have; $ -0.31<=-0.3 $ which is essentially equal to the each other. Ergo, -16 satisfies the equation. \
Take _*-15*_: repeat the same process from above and you have; $ -0.33<=-0.3 $ which is true so -15 satisfies the equation. \
_Continuing to do this until you get to -1._ \
Take _*-1*_: $ -5<=-0.3 $ which is also true. 
Take _*0*_: $ 0<=-0.3 $ This is false
From -16 to -1, that is 16 integers so there are just 16 integers that satisfy the original equation.

//#pagebreak()
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
  image("day17.png", height:280pt),
  caption:[A screenshot of the results using Wolfram],
)

$ "Looking at Figure 2, we can see the results are" && x=-28,17 $
$ "since " && x>0 && "therefore " && x=17. $ 

#pagebreak()
#alignRight[Day 20]
$ "The product of two rolls of a six-sided die is greater than 8 with a probability of" && x/36 $
#soln()
Well, this is pretty straightforward, I believe. You have a single six-sided die and you roll it twice. With each roll of the dice, there are six possible outcomes so to find the possible products of the outcomes of the two rolls, we can make use of a table(6x6).

//#show table.cell.where(level:8): set fill(red)

#show table.cell: it => {
  show regex("^\*.*\*$"): it => strong(it.text.slice(9, 36))
  it
}

#show table.header: set text(red)


#set table(
  fill: (x, y) =>
    if x == 0 or y == 0 {
      green.lighten(40%)
    },
  align: right,
)

\

#set align(center)
  #table(
  columns:7,
  rows:7,
  align:center,
  inset:12pt,
  table.header(
  [],[1],[2],[3],[4],[5],[6],
),
  [1],[1],[2],[3],[4],[5],[6],
 [2],[2],[4],[6],[8],[*10*],[*12*],
 [3],[3],[6],[*9*],[*12*],[*15*],[*18*],
 [4],[4],[8],[*12*],[*16*],[*20*],[*24*],
 [5],[5],[*10*],[*15*],[*20*],[*25*],[*30*],
 [6],[6],[*12*],[*18*],[*24*],[*30*],[*36*],
)
\
#set align(left)

$ "Counting those products that are greater than 8. There are 20 of them. So" && x = 20 $ 
$ #sym.therefore && "the probability of the product of two rolls of a six-sided die being greater than 8 is" && 20/36. $


#alignRight[Day 22]
$ +7 dot 10\ -4 dot 8\ +10 dot 4\ -8 dot 7 $
#soln()
Yup, you read that problem correctly. This was exactly the problem for the 22#super[nd] of March. This is pretty straightforward. So what we should do is bring out BODMAS
#footnote[If this is your first time seeing this, allow me to explain the usefulness of Brackets, Of, Division, Multiplication, Addition, Subtraction. So $ a + b dot c + d $ gives you a different result if you add the terms together before multiplying them than if you multiplied terms together before then adding up. So to prevent from this variation in result, we have this in place. So you have to take the operations in this order. Why? I still do not know. I remember asking myself this question when i was teaching kids math during my service year. I should fix up on that.]
and according to this rule, we should be handling all the multiplications before adding or subtracting. So doing this results in 
$ &=+70-32+40-56 \ &=110-88 \ &=22 $

//this for assigning shit to its own page. lol
#pagebreak()
#alignRight[*The order in which these problems were solved.*
]
- Day 14.
- Day 9.
- Day 17.
- Day 16.
- Day 7.
- Day 20.

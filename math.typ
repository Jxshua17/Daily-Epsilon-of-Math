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

//#pagebreak()
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

//#pagebreak()
#alignRight[Day 20]
$ "The product of two rolls of a six-sided die is greater than 8 with a probability of" && x/36 $
#soln()
Well, this is pretty straightforward, I believe. You have a single six-sided die and you roll it twice. With each roll of the dice, there are six possible outcomes so to find the possible products of the outcomes of the two rolls, we can make use of a table(6x6).

//#show table.cell.where(level:8): set fill(red)


#show table.header: set text(red)


#set table(
  fill: (x, y) =>
    if x == 0 or y == 0 {
      green.lighten(40%)
    },
  align: right,
)

\
#figure(
//set align(center)
  table(
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
 
),
caption:[Table showing the products of the results of two rolls of a six-sided die.]
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

#alignRight[Day 23]
$ 23^29 mod 29 $
#soln()
This is quite the problem. lol.
#footnote[Trying to also document my struggles with problems and the approaches that clearly didn't work.]
I am currently struggling to solve this problem despite the approaches that i have taken.
#footnote[As i was writing this sentence, i suddenly had an a possible insight for an approach on how to go about solving the problem.] \
The first thought i had was writing a simple java program that found the value of 23 to the power of 29 using the function pow( ) imported from the Math class and then using the modulus operator to find the final answer but that didn't work because the data type i used for storing these values was 'int' and there is a maximum value that can be stored in int which is $ 2^31 $ and this is clearly smaller than 23 to the 29#super[th] power. I thought of using BigInteger but there is a problem in trying to use the modulus operator with the BigInteger variable. 
#footnote[If i haven't mentioned this or you are unfamiliar, there is an obvious clue to help you with solving the daily problems and that is the fact that the answer to the problem is that day's date. So going by this, The answer for today should be 23 and nothing else.] \
I tried using  the modulus function for BigInteger but yet i still am not getting the answer which leaves me with the only other option of trying to breakdown the number into smaller bits that i can then perform computation on but 2 is clearly a prime which sucks. I might also try using the commutative property of modular aithmetic to break it down. I don't know. Lemme keep on trying. \
Several minutes later, and i have been rescued by the commutative power of modular arithmetic as well as a small java program that i wrote. 
\
#figure(
  image("modulus.png", height:100pt),
  caption:[A screenshot of an excerpt from the Competitive Programmer's Handbook written by Antti Laaksonen. (_pp 6-7_) ],
)

So just to refresh my knowledge of modular arithmetic, i consulted the Competitive Programmer's Handbook written by Antti Laaksonen and with that i just knew what to do. First, i had to break them down(ignoring the modulus for now);
$ 23^29 $
$ &=23^19+10 \ &=23^19 dot 23^10 \ &=23^9 dot 23^10 dot 23^5 dot 23^5 \ &=23^5 dot 23^4 dot 23^5 dot 23^5 dot 23^5 dot 23^5 $
Now, bringing in the modulus part of the equation and using our updated knowledge on modular arithmetic from Figure 3.
$ &=(23^5 dot 23^4 dot 23^5 dot 23^5 dot 23^5 dot 23^5)mod 29 $
$ &=(23^5 mod 29 dot 23^4  mod 29 dot 23^5  mod 29 dot 23^5  mod 29 dot 23^5  mod 29 dot 23^5 mod 29)mod 29 $
We can now write a program that looks for the fifth and fourth power of 23 which would then find the modulus; \ \
```java
public class Day23 {

    public static void main(String[] args) {

        //finding the fourth and fifth power of 23 which then casts our answer to type int because the type of the result of the pow() method is double.
        int h = (int) Math.pow(23, 5);
        int h1 = (int) Math.pow(23, 4);

        //finds the modulus of the results stored in the above variable.
        int i = h % 29;
        int i1 = h1 % 29;

        //multiplies the results.
        int c2 = (int)Math.pow(i, 5) * i1;

        //prints the result of c2 mod 29.
        System.out.println("the result of 23^29 mod 29 is " + c2%29);

    }
}
```
When you run this program, the printed statement on the terminal/console is "the result of 23^29 mod 29 is 23". And there it is--our answer--23. \ \

#alignRight[Day 24]
A basketball team made 25% of its 3-point shots and 44% of its 2-point shots to score 40 points from 49 shots. How many 3-point shots were attempted?
#soln()
After reading this question hundreds and a page filled with terrible attempts at a solution, i can finally say i have solved it and all i needed was a piss break. I took a piss break, came back and started afresh. Now to the solution. \
49 shots were made consisting of 3 points shot and 2 point shots.
Let $ x= && "amount of 3pts shot attempted." \ y= && "amount of 2pts shot attempted." $
Given this, we can develop the following equation knowing the total shots made which is 49;
$ x+y=49 \ $

Of the total amount of 3pts shots attempted, only 25% went in and of the total amount of 2pts shots attempted, only 44% went in. The total points scored from the 49 shots is 40 points which would mean that just 25% of the 3 points shots attempted summed together with 44% of the 2 points shots attempted result in a total score of 40. Given this, we can develop the following equation;
$ 25%(3x)+44%(2y)=40 $
$ 0.25(3x)+0.44(2y)=40 $
$ 0.75x+0.44y=40 $

We now have a set of simultaneous equations. 
$ x+y=49 -> "eqn 1" $
$ 0.75x+0.44y=40 -> "eqn 2" $
We will solve for just _x_ since that is what we are concerned with. So making _y_ the subject of formula in eqn 1 and substituting for y in eqn 2.
$ "From eqn 1, we have" && y=49-x && "and then substituting for y in eqn 2" $
$ 0.75x+0.88(49-x)=40 $
$ 0.75x+43.12-0.88x=40 $
$ 0.75x-0.88x=40-43.12 $
$ cancel(-, angle:#30deg,)0.13x=cancel(-, angle:#30deg)3.12 $ //i really should have looked at an example in the documentation. lol.
$ x=3.12/0.13 $
$ x=24 $
$ #sym.therefore && "The amount of 3-points shots attempted was 24." $
\ 
#alignRight[Day 26]
$ sum_(n=1)^6 tan^2((n pi) / 14) $
#soln()
$ sum_(n=1)^6 tan^2((n pi) / 14)
  &= tan^2(pi/14) +  tan^2((cancel(2)pi)/cancel(14)) + tan^2((3pi)/14) + tan^2((cancel(4)pi)/cancel(14)) + tan^2((5pi)/14) + tan^2((cancel(6)pi)/cancel(14)) \
  &= tan^2(pi/14) +  tan^2((pi)/7) + tan^2((3pi)/14) + tan^2((2pi)/7) + tan^2((5pi)/14) + tan^2((3pi)/7) $

At this point, i used the calculator of my phone to compute the values and for the first three terms of the equation, i noticed that the results were too low
that if i were to sum them all up, i wouldn't get the result i wanted as the clue suggests. #footnote[or maybe i didn't write the expression well in the calculator.] So off to Wolfram, I went. \
  
  #figure(
    image("day26.png", height:300pt),
    caption:[A screenshot of the results using Wolfram.]
  )

  From the diagram, we can see that the result is 26. \

$ #sym.therefore sum_(n=1)^6 tan^2((n pi) / 14) = 26 $

#alignRight[Day 27]
#polygon(
  fill:rgb("#93c7d5"),
  stroke:black,
  (20%, 0pt),
  (60%, 0pt),
  (80%, 4cm),
  (0%,  4cm),
)

#pagebreak()
#alignRight[Day 31]
Find the mode of the number of days in the months of 2026.
#soln()
So this is a pretty interesting question. We could start by listing out the different months and the number of days in them or better still, list the days and then the different months with this number alongside their frequency. There are only three possible numbers 28, 30 and 31.
- 28 -> February(1).
- 30 -> April, June, September, November(4).
- 31 -> January, March, May, July, August, October, December(7).
$ #sym.therefore && "The mode of the number of days in the month of 2026 is 7." $


#pagebreak()
#alignRight[April]
#alignRight[Day 2]
$ z+1/z=sqrt(2) $
$ u=z^11+z^(-11) $
$ v=z^7+z^(-7) $
$ x=-(u dot v) $
#soln()
Let the first equation be equation 1, the second equation 2 and the third equation 3. \
Squaring both sides of equation 1.
$ (z+1/z)^2 = (sqrt(2))^2 $
$ z^2+2+1/z^2=2 $
$ z^2+cancel(2)+1/z^2=cancel(2) \ $

#set math.equation(numbering: "(1)")
#counter(math.equation).update(3)
$ z^2+1/z^2=0  $ <eqn4>

The next thing to do now would be to square both sides of @eqn4.
#set math.equation(numbering: none)
$  (z^2+1/z^2)^2=0 $
$ z^4+2+1/z^4=0 $
#set math.equation(numbering: "(1)")
#counter(math.equation).update(4)
$ z^4+1/z^4=-2 $ <eqn5>
Now, multiplying equation 2 by equation 1:
#set math.equation(numbering: none)
$ (z^2+1/z^2)(z+1/z) = 0 dot sqrt(2) $
$ z^3+z+1/z+1/z^3=0 $
$ "from Equation 1, we know that" && [z+1/z=sqrt(2)]  && ", so therefore" $
$ z^3+sqrt(2)+1/z^3=0 $
#set math.equation(numbering: "(1)")
#counter(math.equation).update(5)
$ z^3+1/z^3=-sqrt(2) $ <eqn6>

So now, finding the product of @eqn6 and @eqn5;
#set math.equation(numbering: none)
$ (z^4+1/z^4)(z^3+1/z^3)=-2 dot -sqrt(2) $
$ (z^4+1/z^4)(z^3+1/z^3)=2sqrt(2) $
$ z^7+z+1/z+1/z^7=2sqrt(2) $
$ "Again, from Equation 1, we know that" && [z+1/z=sqrt(2)]  && ", so therefore" $
$ z^7+sqrt(2)+1/z^7=2sqrt(2) $
$ z^7+1/z^7=2sqrt(2)-sqrt(2) $
#set math.equation(numbering: "(1)")
#counter(math.equation).update(6)
$ z^7+1/z^7=sqrt(2) $ <eqn7>
#set math.equation(numbering: none)
$ #sym.therefore && "the value for v is" && sqrt(2)  $
To find $u$, we need to find the product of @eqn7 and @eqn5;
$ (z^7+1/z^7)(z^4+1/z^4)=-2 dot sqrt(2) $
$ z^11+z^3+1/z^3+1/z^11=-2sqrt(2) $
$ "from Equation 6, we know that" && [z^3+1/z^3=-sqrt(2)] $
$ z^11-sqrt(2)+1/z^11=-2sqrt(2) $
$ z^11+1/z^11=-2sqrt(2)+sqrt(2) $
$ z^11+1/z^11=-sqrt(2) $
$ #sym.therefore && "the value for u is" && -sqrt(2)  $

\

$ x=-(u dot v) $
$ x=-(-sqrt(2) dot sqrt(2)) $
$ x=sqrt(2) dot sqrt(2) $
$ #sym.therefore x=2 $
\
\
\
#alignRight[Day 14]
Find the greatest number of Mondays that can occur in three consecutive months.
#soln()
So for this, you need the three months to have as much days in it that's possibly allowed. The maximum number of days you can have in a month is 31 and from the problem in Day 31 of March, you can observe that you can't have three consecutive months that have 31 days. It's either that there are separated by a month with 28/29 days or 30 days. So the next best option is to have two months with 31 days and a month with 30 days separating them. That's the first consideration for this problem. The next consideration for this problem is to make sure that the first day of the first month is on Monday. 
#footnote[The first day of the 29/30/31-day month usually ends up having 5 instances of that day so for example, if Monday is the first day of the month, there will be 5 Mondays in that month.]

#show table.header: set text(black)


#set table(
  fill: (x, y) =>
    if y == 0 {
      none
    },
  align: right,
  stroke: none,

)

#figure(
  table(
  columns:7,
  rows:5,
  table.header(
    [*M*],[*T*],[*W*],[*T*],[*F*],[*S*],[*S*],
  ),
  [1],[],[],[],[],[],[],
  [8],[],[],[],[],[],[],
  [15],[],[],[],[],[],[],
  [22],[],[],[],[],[],[],
  [29],[30],[31],[],[],[],[],
),
caption:[Month 1]
)


#figure(
  table(
  columns:7,
  rows:5,
  table.header(
    [*M*],[*T*],[*W*],[*T*],[*F*],[*S*],[*S*],
  ),
  [],[],[],[1],[2],[3],[4],
  [5],[],[],[],[],[],[],
  [12],[],[],[],[],[],[],
  [19],[],[],[],[],[],[],
  [26],[27],[28],[29],[30],[],[],
),
caption:[Month 2]
)

#figure(
  table(
  columns:7,
  rows:5,
  table.header(
    [*M*],[*T*],[*W*],[*T*],[*F*],[*S*],[*S*],
  ),
  [],[],[],[],[],[1],[2],
  [3],[],[],[],[],[],[],
  [10],[],[],[],[],[],[],
  [17],[],[],[],[],[],[],
  [24],[],[],[],[],[],[],
  [31]
),
caption:[Month 3]
)

For the Tables 2, 3 and 4 which shows the three different months, we are only concerned with Mondays and then the days of the week which are dates ending the month and leading to the next month hence the sparse nature of the months. \
Counting all of the Mondays in the above tables gives us a total of _*14 Mondays which is the greatest number of Mondays that can occur in three consecutive months*_.
\
\
#alignRight[Day 15]
How many twin primes are under one hundred?
#soln()
So what are twin primes? Twin primes are prime numbers that have a difference of just two. 2 and 3 can't be prime because their difference is just one. The twin primes under 100 are;
1. 3, 5.
2. 5, 7.
3. 11, 13.
4. 17, 19.
5. 29, 31.
6. 41, 43.
7. 59, 61.
8. 71, 73.

So in total, there are just *8* twin primes under 100. 
#footnote[This is pretty weird. Haha. I had mentioned earlier on that the date is usually a clue as to what the answer for that day's problem would be. Well, not in this case. This was the exact opposite. Makes me wonder if what they meant was a thousand and not a hundred. \ Future Joshua here: I checked and if you find the twin primes under 1000, it exceeds 15 so it couldn't have been a mistake. I guess my suspicion was wrong all along. Not all the problems have solutions that are exactly the date.]
//TODO create a link between the above footnote and the necessary comment.

#alignRight[Day 16]
$ 18sqrt(8) + 8sqrt(18) = 15sqrt(2x) $
#soln()
$ 18sqrt(4 dot 2) + 8sqrt(9 dot 2) = 15sqrt(2x) \
  18 dot 2sqrt(2) + 8 dot 3sqrt(2) = 15sqrt(2x) \
  36sqrt(2) + 24sqrt(2) = 15sqrt(2x) \
  60sqrt(2) = 15sqrt(2x) \
  cancel(60)sqrt(2) = cancel(15)sqrt(2x) \
  4sqrt(2) = sqrt(2x) \
  4sqrt(2) = sqrt(2) dot sqrt(x) \
  4cancel(sqrt(2)) = cancel(sqrt(2)) dot sqrt(x) \
  sqrt(x) = 4^2 \
  x = 16
$

#let initialTemp = $ t#sub[i] $
#let finalTemp = $ t#sub[f] $
#let warmingRate = $ r#sub[w] $
#let coolingRate = $ r#sub[c] $
#let cel = $ #sym.degree&&"C" $
#let fah = $ #sym.degree&&"F" $

#alignRight[Day 20]
A cup starts at 0$cel$ and warms at 1$cel$ per minute in a room that starts at 88$fah$ and cools at 1$fah$ per minute, both reading the same temperature after $x$ mins.
#soln()
Let the temperature that they both read after x mins be z$cel$.
- Cup.
  - initial temperature, $initialTemp$ = 0$cel$ \
  - final temperature, $finalTemp$ = z$cel$ \
  - warming rate, $warmingRate$ = 1$cel$ /min 
- Room
  - initial temperature, $initialTemp$ = 88$fah$ \
  - final temperature, $finalTemp$ = z$cel$ \
  - cooling rate, $coolingRate$ = 1$fah$ /min 

First thing to do is to convert the initial temperature
#footnote[The pendant in you might be thinking that since the room is cooling, shouldn't 88$fah$ be the final temparature of the room and z$cel$ be the initial temperature. I get it but _semantics_. Haha!]
of the room and the cooling rate from fahrenheit to celsius. 

- Converting the initial temperature of the room. \
 Let the intial temperature of the room in celsius be $y$,
 $ (y-0)/(100-0)=(88-32)/(212-32) \
    y/100=56/180 \
    y=(56 dot 100)/180 \
    y=31
 $

$#sym.therefore$ the initial temperature of the room in celsius is 31$cel$.

- Converting the cooling rate.
 $ 1cancel(fah) dot (100cel)/(212cancel(fah)) \
    = 0.47cel/min
 $

$#sym.therefore$ the cooling rate of the room in celsius is 31$cel$/min.

They both read the same temperature of z$cel$ after x mins which would mean that z would be taken as a constant.

- For the cup, \
$ warmingRate = (finalTemp - initialTemp) / t \
  1 = (z - 0)/x \
  1 = z/x \
$

//my novel solution for resetting the equation numbering system.
#set math.equation(numbering: none)
#set math.equation(numbering: "(1)")
#counter(math.equation).update(0) //i think this might look sexier with a function. 

$ z=x $ <eqn1>
#set math.equation(numbering: none)
- For the room, \
$ 
 coolingRate = (initialTemp - finalTemp)/t \
 0.47 = (31-z)/x \
 0.47x = 31-z \
$
#set math.equation(numbering: "(1)")
#counter(math.equation).update(1)
$ z=31-0.47x $ <eqn2>
Equating @eqn1 and @eqn2;
#set math.equation(numbering: none)
$ x = 31-0.47x $
$ x+0.47x=31 $
$ 1.47x=31 \
  x=31/1.47 \
  x=21
$

$#sym.therefore$ the cup and the room would both read the same temperature after 21 minutes.


#alignRight[Day 21]
Find the smallest positive integer $x$ such that $x/672$ is a terminating decimal.
#soln()
First, we need to know what a terminating decimal is. A terminating decimal is a decimal that contains a finite number of digits after the decimal point. So we need to find the smallest positive integer $x$ such that $x/672$ is a terminating decimal. For this, i have to bring out the big gun, JAVA. I have to write a program that finds me this number using a while loop.
#footnote[The source code for the programs in this book can be found on this #link("https://github.com/Jxshua17/Daily-Epsilon-of-Math")[ #underline[*Github repo*.] ]]

```java
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
```

$#sym.therefore$ The smallest possible integer $x$ such that $x/672$ is a terminating decimal is 21. That's the number that's you get when you run the above program.
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
- Day 22.
- Day 23.
- Day 24.
- Day 26.
- Day 31.
- Day 2.
- Day 14.
- Day 15.
- Day 16.
- Day 20.

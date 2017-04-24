**Countdown - Racket**
===================

**Student:**<br>
*Dara Starr - G00209787*<br>
**Course:** *Software Development*<br>
**Module:** *Theory of Algorithms*<br>
**Lecturer:** *Dr. Ian McLoughlin*<br>
**Galway-Mayo Institute of Technology**
****

**Project overview**
As part of our module Theory of Algorithms we were tasked with creating the number problem game made famous on the television show Countdown. The language which we were required to use for the game is the functional programming language [Racket](https://racket-lang.org/). 

**Rules of the Game**
In the Countdown Numbers game contestants are given six random numbers
and a target number. The target number is a randomly generated three digit
integer between 101 and 999 inclusive. The six random numbers are selected
from the following list of numbers:
[1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 25, 50, 75, 100]
Contestants must use the four basic operations – add, subtract, multiply
and divide – with the six random numbers to calculate the target number
(if possible). They don’t have to use all six of the numbers, however each of
the six random numbers can only be used once. If the same number appears
twice in the list of six then it may be used twice. At each intermediate
step of the calculation, negative numbers and fractions are not allowed. For
instance, you can’t subtract a 7 from a 2, as that would give -5, and likewise
you can’t divide 2 by 7 as that gives a fraction.
As an example, suppose the target number is 424 and the six random
numbers are [100, 25, 10, 2, 2, 1]. Then the following calculation works: (100×
(2+2))+25−1. The steps in this calculation are broken down into individual
operations as follows. First add 2 and 2, to give 4. Then multiply this by
100, to give 400. Then add 25 to give 425. Finally subtract 1 to give 424

**Install DrRacket**
In order to run any racket code you will need to install the IDE DrRacket. I have provided a Link here which will enable you to download [DrRacket](https://racket-lang.org/download/).

**Download the zip**

 - On the right hand side of the repository you will see the green Clone or Download button which will allow you to get a zipped copy of this project.
 - Pull it down onto your computer and unzip and pace the folder somewhere familiar in your file directory.
 - Open DrRacket and go to file -> open and locate where you saved the project.
 - The project folder will contain a few files but the one which you are interested in is Countdown.rkt.
 - One tip with DrRacket is on opening some files make sure at the top of the file it has `#lang racket`.
 - Without this the racket file you are working with will not work.<br>
 
 **License Added**
 MIT License

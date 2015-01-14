Day 8 - Structs and Testing in Ruby
======================

Testing is a way to get a fast feedback cycle, and stop yourself from making the
same mistakes over and over again.

`yourfile.rb` : `yourfile_test.rb`

QUIZ
--------

Given the following data, write code that:

1. outputs "$Nam of house $House, from $Castle"
2. Create an array of Starks

```ruby

class Person

  attr_accessor :name, :house, :castle

  def initialize(name, house, castle)
    @name = name
    @house = house
    @castle = castle
  end
end

people = [
  Person.new("Jaime", "Lanister", "Casterly Rock"),
  Person.new("Cerse", "Lanister", "Casterly Rock"),
  Person.new("Eddard", "Stark", "Winterfell"),
  Person.new("Catelyn", "Stark", "Riverrun"),
  Person.new("Robb", "Stark", "Winterfell"),
  Person.new("Margaery", "Tyrell", "Highgarden"),
]

```


Quiz 2: fizzbuzz
---------------

> Write a program that prints the numbers from 1 to 100.
> But for multiples of three print "Fizz" instead of the
> number and for the multiples of five print "Buzz". For
> numbers which are multiples of both three and five
> print "FizzBuzz".

* Checking if a number is divisible by another is called modulo. 
* So 4 is divisible by 2 because 4 % 2 has no remainder
* `4 % 2 == 0` or `4.modulo(2) == 0`


Homework
--------

Honoring a long standing tradition started by my wife's dad, my friends all play
a Secret Santa game around Christmas time. We draw names and spend a week
sneaking that person gifts and clues to our identity. On the last night of the
game, we get together, have dinner, share stories, and, most importantly, try to
guess who our Secret Santa was. It's a crazily fun way to enjoy each other's
company during the holidays.

To choose Santas, we use to draw names out of a hat. This system was tedious,
prone to many "Wait, I got myself..." problems. This year, we made a change to
the rules that further complicated picking and we knew the hat draw would not
stand up to the challenge. Naturally, to solve this problem, I scripted the
process. Since that turned out to be more interesting than I had expected, I
decided to share.

This weeks Ruby Quiz is to implement a Secret Santa selection script.

Example of data file:

> Luke Skywalker <luke@theforce.net>
> Leia Skywalker <leia@therebellion.org>
> Toula Portokalos <toula@manhunter.org>
> Gus Portokalos <gus@weareallfruit.net>
> Bruce Wayne <bruce@imbatman.com>
> Virgil Brigman <virgil@rigworkersunion.org>
> Lindsey Brigman <lindsey@iseealiens.net>

Note: If you cannot tell, I made those addresses up and you'll need to replace
them with something meaningful. Please don't pester those people, should they
happen to be real.

The format for these names is:

> FIRST_NAME space FAMILY_NAME space <EMAIL_ADDRESS> newline

We'll keep things simple and say that people only have two names, so you don't
have to worry about tricky names like Gray II.

Your script should then choose a Secret Santa for every name in the list.
Obviously, a person cannot be their own Secret Santa. 

Output is obvious. Print out each person's secret Santa.


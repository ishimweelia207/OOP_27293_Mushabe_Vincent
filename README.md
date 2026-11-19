# Dart OOP Assignment: Kigali Bus Card

Name: Mushabe Vincent  
Student ID:27293/2024
 My numbers
 D = 93
 L = 3
Starting balance = 1,930 RWF
Bus fare = 293 RWF
Student discount = 13%
      Output of main.dart

(To be added after completing and running `main.dart`.)
   Part 1: Why no setter for balance?

There is no setter for balance because users should not change the balance directly.
They should use the `topUp()` method to add money and the `pay()` method to pay for the bus.
This helps protect the balance from incorrect changes.

  Part 2: What does ~/ do?

The `~/` operator performs integer division. It divides two numbers and returns a whole number without a decimal part.

For example:

=237 * 17 / 100
   gives 40.29.
- `237 * 17 ~/ 100` gives `40`.

In this assignment, `~/` helps calculate the student discount as a whole number.

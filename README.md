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

Error: name too short

Owner: Ama | Balance: 1000 RWF

Owner: Mushabe Vincent | Balance: 1000 RWF

Error: top-up must be 500 to 50000 RWF

Topped up 2000 RWF

Paid 293 RWF

Paid 293 RWF

Owner: Mushabe Vincent | Balance: 2414 RWF

Student discount: 38 RWF

Paid 255 RWF

Owner: Mushabe Vincent | Balance: 1675 RWF

Student discount: 13%


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

  ## Part 4: Bug table
  ## Part 4: Bug table

| Bug | The line | Why it is wrong (your words) | Your fix |
|---|---|---|---|
| 1 | `String _brand;` and `int _battery;` | The fields have no starting values. | Initialize them to `''` and `0`. |
| 2 | `SmartPhone(String brand, int battery, String system)` | The parent constructor is not called. | Add `: super(brand, battery)`. |
| 3 | `@override void restart()` | The parent class has no restart method. | Add `restart()` to `Phone`. |
| 4 | `p.battery = 100;` | There is no battery setter. | Add a setter that accepts values from 0 to 100. |
| 5 | `print(p.battery());` | A getter is not a method. | Use `print(p.battery);`. |
| Not a bug | `Phone p = new Phone('Tecno', 50);` | The `new` keyword is allowed when creating an object. | None. |

## Part 5: Prediction

My predicted output:

1

5





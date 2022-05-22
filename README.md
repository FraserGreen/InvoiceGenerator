InvoiceGenerator is a console program created to take input in the form of a food order and generate an invoice for the food, at the best price for the customer.

TDD is achieved using [rspec.](https://rspec.info/)

To run tests:
1. Navigate to the base directory using a CLI. (after cloning from github, this will be InvoiceGenerator)
2. Enter ```bin/rspec .\spec\*.rb```

To run program:
1. Navigate to the base directory using a CLI. (after cloning from github, this will be InvoiceGenerator)
2. Enter ```ruby lib/InvoiceGenerator.rb```

<br>

Program structure:

InvoiceGenerator.rb: driver file
Input.rb: gathers input from user via console.
OrderOptimiser.rb: converts input into an order using the optimal packs to achieve the lowest cost.
Output.rb: prints reciept to the console.
Pack.rb: food item packs are stored here, as a quantity-price pair.
AvailablePacks.rb: Houses currently available food items and their respective available packs. Can be modified to remove or include new foods and new packs.
 
<br>

NOTES:

You may notice that the example given in the code challenge specification does not have the same output as given from this program. 
This is because this program found a better pack selection that reduces the cost by $1.

This program is currently not efficient or scalable. Slowdown can be observed when ordering ~50+ of any item. 
Due to time constraints, I had to choose an inefficient algorithm to solve the subset sum problem.
If I had more time, I would have completed my implementation of a variation of the knapsack problem: 
a minimum unbounded knapsack that required an exact weight if possible.
Some unfinished code has been left, commented out, as guidance for future implementation.

<br>

How I solved the problem:

The github page has a full commit history detailing the steps taken. In short, where possible, I created a test or tests for my desired solution, 
then wrote the code to conform to fulfull the test or tests. I started with creating some data structures to hold the information about packs and food items,
later scrapping lots of it as it was not necessary. I then moved on to creating the main input loop, then the desired output reciept, 
then finally implemented an algorithm to generate the minimum cost pack combinations, firstly attempting an unbound minimum (exact) knapsack implementation,
then, switching to a subset sum algorithm implementation as I was stuck on the knapsack algorithm and needed to finish this project because I need to complete university assignments.

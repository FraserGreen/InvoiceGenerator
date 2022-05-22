require_relative "Input.rb"
require_relative "OrderOptimiser.rb"
require_relative "Output.rb"

itemsOrdered = Input.displayMenu 
finalisedOrder = OrderOptimiser.optimise(itemsOrdered)
#uncomment above two lines, and un-uncomment below one line to simulate example order
# finalisedOrder = OrderOptimiser.optimise({"Watermelon" => 10, "Pineapple" => 14, "Rockmelon" => 13})
Output.display(finalisedOrder)
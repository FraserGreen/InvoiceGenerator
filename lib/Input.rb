require_relative 'AvailableFood.rb'
require_relative 'OrderOptimiser.rb'
require_relative 'Output.rb'

class Input
    
    # main loop to populate items hash with food types and quantities
    def self.displayMenu
        items = {}

        puts "Hello, welcome to Fresho!"

        while true do
            name = getName(items)
            next if name == "Invalid"
            break if name == "Done"
            
            qty = getQty(items, name)    
            next if qty == "Back"
    
            items[name] = qty.to_i
            puts "You ordered #{items[name]} #{name}s!"
        end

        if items.length < 1
            puts "No items ordered. Thank you for browsing today's selection."
            return nil
        else
            return items
        end
            
    end

    # gets name of food wanted by user
    def self.getName(items)
        puts "Please enter the name of the food you would like to purchase. Today's available food: #{AvailableFood.packs.keys}. Alternatively, type 'Done' if you are ready to recieve your order."
        name = gets.chomp.strip.capitalize
        return name if name == "Done"

        #CHECK IF ITEM DOES NOT EXIST IN AVAILABLEFOOD
        if !AvailableFood.packs.keys.include? name
            puts "#{name} is not available. Available items: #{AvailableFood.packs.keys}"
            return "Invalid"
        end
        #CHECK IF ITEM EXISTS IN ITEMS
        puts "#{name} has already been ordered. Continuing will change the quanitity previously ordered." if items.keys.include? name
        return name
    end

    # gets quantity of food wanted by user
    def self.getQty(items, name)
        while true do
            puts "How many #{name}s would you like? Alternatively, type 'Back' to go back."
            qty = gets.chomp.capitalize
            break if qty == "Back"
            # CHECK IF QTY IS A NUMBER
            break if qty.to_i > 0
            puts "Quantity must be a real number."
            end
            return qty
    end
end
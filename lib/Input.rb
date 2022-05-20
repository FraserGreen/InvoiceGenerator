require_relative 'AvailableFood.rb'

class Input
    @items = {}
    
    def self.items
        @items
    end

    def self.displayMenu
        puts "Hello, welcome to Fresho!"

        while true do
        
        name = getName
        next if name == "Invalid"
        break if name == "Done"
        
        qty = getQty(name)    
        next if qty == "Back"
 
        #todo insert into hash
        @items[name] = qty.to_i
        puts "You ordered #{@items[name]} #{name}s!"
        end

        # todo print message saying no items ordered if array is empty, 
        if @items.length < 1
            puts "No items ordered. Thank you for browsing today's selection."
        else
            puts "TODO"
            puts items.keys
            #TODO method that outputs output from knapsack method.
        end
    end

    def self.getName
        # puts "Please enter the name of the food you would like to purchase. Today's available food: #{AvailableFood.packs.keys}. Alternatively, type 'Done' if you are ready to recieve your invoice."
        name = gets.chomp.strip.capitalize
        return name if name == "Done"

        #CHECK IF ITEM DOES NOT EXIST IN AVAILABLEFOOD
        if !AvailableFood.packs.keys.include? name
            puts "#{name} "#is not available. Available items: #{AvailableFood.packs.keys}"
            return "Invalid"
        end
        #CHECK IF ITEM EXISTS IN ITEMS
        puts "#{name} has already been ordered. Continuing will change the quanitity previously ordered." if @items.keys.include? name
        return name
    end

    def self.getQty(name)
        while true do
            puts "How many #{name}s would you like? Alternatively, type 'Back' to go back."
            qty = gets.chomp.capitalize
            break if qty == "Back"
            # CHECK IF QTY IS A NUMBER
            break if qty.to_i > 0
            puts "Quantity must be a real number."
            end
            qty
    end


end

Input.displayMenu
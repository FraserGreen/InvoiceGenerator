require_relative "FoodOrder"

class RockmelonOrder < FoodOrder
    
    def initialize(qty)
        super(qty)
        @packs << Pack.new(3, 5.95)
        @packs << Pack.new(5, 9.95)
        @packs << Pack.new(9, 16.99)
        
    end
end
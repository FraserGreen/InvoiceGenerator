require_relative "FoodOrder"

class PineappleOrder < FoodOrder
    
    def initialize(qty)
        super(qty)
        @packs << Pack.new(2, 9.95)
        @packs << Pack.new(5, 16.95)
        @packs << Pack.new(8, 24.95)
        
    end
end
require_relative "FoodOrder"

class WatermelonOrder < FoodOrder
    
    def initialize(qty)
        super(qty)
        @packs << Pack.new(3, 6.99)
        @packs << Pack.new(5, 8.99)
    end
end
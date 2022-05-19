require_relative "Pack"
class FoodOrder
    attr_reader :qty, :packs
    
    def initialize(qty)
        @qty = qty
        @packs = []
    end
end
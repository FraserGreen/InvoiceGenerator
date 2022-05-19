require_relative "Pack"
class FoodOrder
    attr_reader :qty

    def initialize(qty)
        @qty = qty
    end
end
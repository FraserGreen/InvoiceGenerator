require_relative "Pack"
class FoodOrder
    attr_reader :total_quantity, :packs
    
    def initialize(total_quantity)
        @total_quantity = total_quantity
        @packs = {}
        @packs["Watermelon"] = [Pack.new(3, 6.99), Pack.new(5, 8.99)]
        @packs["Pineapple"] = [Pack.new(2, 9.95), Pack.new(5, 16.95), Pack.new(8, 24.95)]
        @packs["Rockmelon"] = [Pack.new(3, 5.95), Pack.new(5, 9.95), Pack.new(9, 16.99)]
    end

end
require_relative "FoodOrder"

class WatermelonOrder < FoodOrder
    @packs = [Pack.new(3, 6.99)]

end
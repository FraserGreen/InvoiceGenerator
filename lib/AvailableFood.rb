require_relative "Pack"

# Contains available food, and their offered packs. 
class AvailableFood
    @packs = {}
    @packs["Watermelon"] = [Pack.new(3, 6.99), Pack.new(5, 8.99)]
    @packs["Pineapple"] = [Pack.new(2, 9.95), Pack.new(5, 16.95), Pack.new(8, 24.95)]
    @packs["Rockmelon"] = [Pack.new(3, 5.95), Pack.new(5, 9.95), Pack.new(9, 16.99)]

    def self.packs
        @packs
    end
end
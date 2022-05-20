class FoodOrder
    attr_reader :name, :qty, :packs
    
    def initialize(name, qty)
        @@name = name
        @@qty = qty
        @@packs = AvailableFood.packs[name]
    end

    def self.packs
        @@packs
    end

    def name
        @@name
    end

    def qty
        @@qty
    end

    def to_s
    "<name = #{name}, qty = #{qty}>"
    end

end
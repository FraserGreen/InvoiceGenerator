class FoodOrder
    attr_reader :name, :qty
    
    def initialize(name, qty)
        @@name = name
        @@qty = qty
    end

    def name
        @@name
    end

    def qty
        @@qty
    end

end
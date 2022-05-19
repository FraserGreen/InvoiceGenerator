class Pack
    attr_reader :qty, :price, :value
    def initialize(qty, price)
        @qty = qty
        @price = price
        @value = qty/price
    end
end
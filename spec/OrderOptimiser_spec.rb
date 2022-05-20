require 'rspec'
require_relative '../lib/OrderOptimiser.rb'

RSpec.describe OrderOptimiser do
    describe '#optimise' do
        # it 'returns a hash with keys = name and value = a hash with keys = Pack and value = quantity' do
        #     # foodOrder = FoodOrder.new("Watermelon", 10)
        #     # expect(foodOrder.name).to eql("Watermelon")
        #     # expect(foodOrder.qty).to eql(10)
        # end
    

        it 'returns a hash with one key("Watermelon"), and one value (hash with one key (Pack object with qty 3 and price 6.99) and one value (1)' do
            optimisedOrder = OrderOptimiser.optimise({"Watermelon" => 3})
            watermelon_packs = optimisedOrder["Watermelon"]
            expect(watermelon_packs.keys[0].qty).to eql(3)
            expect(watermelon_packs.keys[0].price).to eql(6.99)
            expect(watermelon_packs[0]).to eql(1)
            # foodOrder = FoodOrder.new("Watermelon", 10)
            # expect(foodOrder.name).to eql("Watermelon")
            # expect(foodOrder.qty).to eql(10)
        end


    end
end
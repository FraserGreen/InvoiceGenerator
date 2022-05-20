require 'rspec'
require_relative '../lib/OrderOptimiser.rb'

RSpec.describe OrderOptimiser do
    describe '#optimise' do
        # it 'returns a hash with keys = name and value = a hash with keys = Pack and value = quantity' do
        #     # foodOrder = FoodOrder.new("Watermelon", 10)
        #     # expect(foodOrder.name).to eql("Watermelon")
        #     # expect(foodOrder.qty).to eql(10)
        # end
    

        it 'returns 1 x 3 pack @ $6.99 ea' do
            optimisedOrder = OrderOptimiser.optimise({"Watermelon" => 3})
            watermelon_packs = optimisedOrder["Watermelon"]
            expect(watermelon_packs.keys[0].qty).to eql(3)
            expect(watermelon_packs.keys[0].price).to eql(6.99)
            expect(watermelon_packs[watermelon_packs.keys[0]]).to eql(1)
        end

        it 'returns 2 x 5 pack @ $8.99 ea' do
            optimisedOrder = OrderOptimiser.optimise({"Watermelon" => 10})
            watermelon_packs = optimisedOrder["Watermelon"]
            expect(watermelon_packs.keys[0].qty).to eql(5)
            expect(watermelon_packs.keys[0].price).to eql(8.99)
            expect(watermelon_packs[watermelon_packs.keys[0]]).to eql(2)
        end


    end
end
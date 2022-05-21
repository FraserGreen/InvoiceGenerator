require 'rspec'
require_relative '../lib/OrderOptimiser.rb'

RSpec.describe OrderOptimiser do
    describe '#optimise' do   

        it 'items = {"Watermelon" => 10} returns 2 x 5 pack @ $8.99 ea' do
            finalisedOrder = OrderOptimiser.optimise({"Watermelon" => 10})
            food = finalisedOrder[finalisedOrder.keys[0]]
            numPacks = food[food.keys[0]]
            numFoodItemsInPack = food.keys[0].qty
            packPrice = food.keys[0].price
            expect(numPacks).to eql(2)
            expect(numFoodItemsInPack).to eql(5)
            expect(packPrice).to eql(8.99)
        end

        # it 'returns values given in example invoice' do
        #     finalisedOrder = OrderOptimiser.optimise({"Watermelon" => 10, "Pineapple" => 14, "Rockmelon" => 13})
        #     puts finalisedOrder
        #     food1 = finalisedOrder[finalisedOrder.keys[0]]
        #     food2 = finalisedOrder[finalisedOrder.keys[1]]
        #     food3 = finalisedOrder[finalisedOrder.keys[2]]
        #     expect(food1[food1.keys[0]]).to eql(2)
        #     expect(food1.keys[0].qty).to eql(5)
        #     expect(food1.keys[0].price).to eql(8.99)

        #     expect(food2[food2.keys[0]]).to eql(1)
        #     expect(food2.keys[0].qty).to eql(8)
        #     expect(food2.keys[0].price).to eql(24.95)
        #     expect(food2[food2.keys[1]]).to eql(3)
        #     expect(food2.keys[1].qty).to eql(2)
        #     expect(food2.keys[1].price).to eql(9.95)

        #     expect(food3[food3.keys[0]]).to eql(2)
        #     expect(food3.keys[0].qty).to eql(5)
        #     expect(food3.keys[0].price).to eql(9.95)
        #     expect(food3[food3.keys[1]]).to eql(1)
        #     expect(food3.keys[1].qty).to eql(3)
        #     expect(food3.keys[1].price).to eql(5.95)
        # end

        # it 'total item qty is reached exactly by the packs' do
        #     finalisedOrder = OrderOptimiser.optimise({"Watermelon" => 7})
        #     finalisedOrder.each{ |order, packs|
        #         totalQtyOfPacks = 0
        #         packs.each { |pack, qty|
        #             totalQtyOfPacks += pack.qty * qty
        #         }
        #         expect(order[1]).to eql(totalQtyOfPacks)
        #     }
        # end
    end
end
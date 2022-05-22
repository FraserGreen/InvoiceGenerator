require 'rspec'
require_relative '../lib/OrderOptimiser.rb'

RSpec.describe OrderOptimiser do
    
    describe '#sumSubset' do
        packs = AvailableFood.packs["Watermelon"]
        weights = []
        values = []
        
        packs.each {|pack|
            weights << pack.qty
            values << pack.price
        }
        it 'returns correct indices of packs to include in order' do    
            expect(OrderOptimiser.sumSubset(weights,10,values, [])).to eql([[1,1]]) #returns only two instances of packs[1]
            expect(OrderOptimiser.sumSubset(weights,20,values, [])).to include([1,1,1,1]) #returns an array that includes two instances of packs[1]
            expect(OrderOptimiser.sumSubset(weights,7,values, [])).to eql([]) #returns an empty array, meaning an exact match could not be made
            
        end
    end

    describe '#getMinCostOrder' do
        packs = AvailableFood.packs["Watermelon"]
        it 'returns {<Pack: qty:5, price: 8.99> => 2} when faced with an order of 10 watermelons' do
            expect(OrderOptimiser.getMinCostOrder(packs, 10)).to eql({packs[1] => 2})
        end
        
        it 'returns {<Pack: qty:5, price: 8.99> => 3, <Pack: qty:3, price: 6.99> => 1} when faced with an order of 18 watermelons' do
            expect(OrderOptimiser.getMinCostOrder(packs, 18)).to eql({packs[1] => 3, packs[0] => 1})
        end
        
        it 'returns {<Pack: qty:2, price: 9.95> => 2, <Pack: qty:5, price: 16.95> => 2} when faced with an order of 14 pineapples' do
            packs = AvailableFood.packs["Pineapple"]
            expect(OrderOptimiser.getMinCostOrder(packs, 14)).to eql({packs[0] => 2, packs[1] => 2})
        end
        
    end
    
    describe '#optimise' do
        it 'returns correct output for 10 watermelons' do
            packs = AvailableFood.packs["Watermelon"]
            orders = OrderOptimiser.optimise({"Watermelon" => 10})
            expect(orders).to eql({["Watermelon", 10] => {packs[1] => 2}})
        end
        it 'returns correct output for example order' do
            orders = OrderOptimiser.optimise({"Watermelon" => 10, "Pineapple" => 14, "Rockmelon" => 13})
            expect(orders).to eql({
                ["Watermelon", 10] => {AvailableFood.packs["Watermelon"][1] => 2},
                ["Pineapple", 14] =>  {AvailableFood.packs["Pineapple"][0] => 2, 
                                       AvailableFood.packs["Pineapple"][1] => 2},
                ["Rockmelon", 13] => {AvailableFood.packs["Rockmelon"][0] => 1,
                                       AvailableFood.packs["Rockmelon"][1] => 2}})
        end
    end

    # describe '#knapsack' do
    #     it 'returns correct total value with given weights and values' do
    #         # expect(OrderOptimiser.knapsack([3, 5], [6.99, 8.99], 10)).to eql(2*(8.99))
    #         # expect(OrderOptimiser.knapsack([2, 5, 8], [9.95, 16.95, 24.95], 13)).to eql((3*(9.95)+(24.95)))
    #         # expect(OrderOptimiser.knapsack([3, 5, 9], [5.95, 9.95, 16.99], 13)).to eql((2*(9.95)+(5.95)))
    #     end
    
end
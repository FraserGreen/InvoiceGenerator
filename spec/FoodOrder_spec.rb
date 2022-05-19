require 'rspec'
require_relative '../lib/FoodOrder.rb'

describe FoodOrder do
    describe '#get name and quantity' do
        it 'returns 10' do
            foodOrder = FoodOrder.new("Watermelon", 10)
            expect(foodOrder.qty).to eql(10)
            expect(foodOrder.name).to eql("Watermelon")
        end
    end
end
require 'rspec'
require_relative '../lib/WatermelonOrder.rb'

describe WatermelonOrder do
    describe '#get quantity' do
        it 'returns 10' do
            food = FoodOrder.new(10)
            expect(food.qty).to eql(10)
        end
    end
end
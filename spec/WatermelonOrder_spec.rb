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

describe WatermelonOrder do
    describe '#get pack 0' do
        it 'returns Pack.new(3, 6.99)' do
            watermelons = WatermelonOrder.new(100)
            expect(pack[0]).to eql(Pack.new(3,6.99))
        end
    end
end
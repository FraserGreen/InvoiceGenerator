require 'rspec'
require_relative '../lib/FoodOrder.rb'

describe FoodOrder do
    describe '#get quantity' do
        it 'returns 10' do
            foodOrder = FoodOrder.new(10)
            expect(foodOrder.total_quantity).to eql(10)
        end
    end
end

describe FoodOrder do
    describe '#get first watermelon pack' do
        it 'returns Pack object' do
            foodOrder = FoodOrder.new(10)
            expect(foodOrder.packs["Watermelon"][0].price).to eql(6.99)
        end
    end
end

describe FoodOrder do
    describe '#get number of packs' do
        it 'returns 8' do
            foodOrder = FoodOrder.new(10)
            len = 0
            foodOrder.packs.length.times { |i|
                len += foodOrder.packs.values[i].length
            }
            expect(len).to eql(8)
            # expect(foodOrder.packs["Watermelon"][0].price).to eql(6.99)
        end
    end
end

describe FoodOrder do
    describe '#get quantity' do
        it 'returns 10' do
            foodOrder = FoodOrder.new(10)
            expect(foodOrder.total_quantity).to eql(10)
        end
    end
end

describe FoodOrder do
    describe '#get attributes of first watermelon pack' do
        it 'returns atttributes of Pack.new(3, 6.99)' do
            foodOrder = FoodOrder.new(100)
            expect(foodOrder.packs["Watermelon"][0].qty).to eql(3)
            expect(foodOrder.packs["Watermelon"][0].price).to eql(6.99)
            expect(foodOrder.packs["Watermelon"][0].value).to eql(3/6.99)
        end
    end
end

describe FoodOrder do
    describe '#get number of Watermelon packs offered' do
        it 'returns 3' do
            foodOrder = FoodOrder.new(1)
            expect(foodOrder.packs["Watermelon"].length).to eql(2)            
        end
    end
end

# invalid foodOrder name
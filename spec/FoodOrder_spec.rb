require 'rspec'
require_relative '../lib/FoodOrder.rb'

RSpec.describe FoodOrder do
    describe 'get name and quantity' do
        it 'returns "Watermelon" and 10' do
            foodOrder = FoodOrder.new("Watermelon", 10)
            expect(foodOrder.name).to eql("Watermelon")
            expect(foodOrder.qty).to eql(10)
        end
    end

    describe 'get watermelon packs' do
        it 'returns array of Packs that are assigned to watermelons' do
            foodOrder = FoodOrder.new("Watermelon", 10)
            expect(FoodOrder.packs).to eql(AvailableFood.packs["Watermelon"])
        end
    end
end
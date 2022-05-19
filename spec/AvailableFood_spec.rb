require 'rspec'
require_relative '../lib/AvailableFood.rb'

describe AvailableFood do
    describe '#get first watermelon pack' do
        it 'returns Pack object' do
            availableFood = AvailableFood
            expect(availableFood.packs["Watermelon"][0].price).to eql(6.99)
        end
    end
end

describe AvailableFood do
    describe '#get number of packs' do
        it 'returns 8' do
            availableFood = AvailableFood
            len = 0
            availableFood.packs.length.times { |i|
                len += availableFood.packs.values[i].length
            }
            expect(len).to eql(8)
            # expect(availableFood.packs["Watermelon"][0].price).to eql(6.99)
        end
    end
end

describe AvailableFood do
    describe '#get attributes of first watermelon pack' do
        it 'returns atttributes of Pack.new(3, 6.99)' do
            availableFood = AvailableFood
            expect(availableFood.packs["Watermelon"][0].qty).to eql(3)
            expect(availableFood.packs["Watermelon"][0].price).to eql(6.99)
            expect(availableFood.packs["Watermelon"][0].value).to eql(3/6.99)
        end
    end
end


describe AvailableFood do
    describe '#get number of Watermelon packs offered' do
        it 'returns 3' do
            availableFood = AvailableFood
            expect(availableFood.packs["Watermelon"].length).to eql(2)            
        end
    end
end

# invalid foodOrder name
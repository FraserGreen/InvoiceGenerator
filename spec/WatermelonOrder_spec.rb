require 'rspec'
require_relative '../lib/WatermelonOrder.rb'

describe WatermelonOrder do
    describe '#get quantity' do
        it 'returns 10' do
            watermelonOrder = WatermelonOrder.new(10)
            expect(watermelonOrder.qty).to eql(10)
        end
    end
end

describe WatermelonOrder do
    describe '#get attributes of first pack' do
        it 'returns Pack.new(3, 6.99)' do
            watermelonOrder = WatermelonOrder.new(100)
            expect(watermelonOrder.packs[0].qty).to eql(3)
            expect(watermelonOrder.packs[0].price).to eql(6.99)
            expect(watermelonOrder.packs[0].value).to eql(3/6.99)
        end
    end
end

describe WatermelonOrder do
    describe '#get number of packs offered' do
        it 'returns 3' do
            watermelonOrder = WatermelonOrder.new(1)
            expect(watermelonOrder.packs.length).to eql(2)            
        end
    end
end

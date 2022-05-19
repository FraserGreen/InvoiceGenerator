require 'rspec'
require_relative '../lib/RockmelonOrder.rb'

describe RockmelonOrder do
    describe '#get quantity' do
        it 'returns 10' do
            rockmelonOrder = RockmelonOrder.new(10)
            expect(rockmelonOrder.qty).to eql(10)
        end
    end
end

describe RockmelonOrder do
    describe '#get attributes of first pack' do
        it 'returns Pack.new(3, 6.99)' do
            rockmelonOrder = RockmelonOrder.new(100)
            expect(rockmelonOrder.packs[0].qty).to eql(3)
            expect(rockmelonOrder.packs[0].price).to eql(5.95)
            expect(rockmelonOrder.packs[0].value).to eql(3/5.95)
        end
    end
end

describe RockmelonOrder do
    describe '#get number of packs offered' do
        it 'returns 3' do
            rockmelonOrder = RockmelonOrder.new(1)
            expect(rockmelonOrder.packs.length).to eql(3)            
        end
    end
end

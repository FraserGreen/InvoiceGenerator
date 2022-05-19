require 'rspec'
require_relative '../lib/PineappleOrder.rb'

describe PineappleOrder do
    describe '#get quantity' do
        it 'returns 10' do
            pineappleOrder = PineappleOrder.new(10)
            expect(pineappleOrder.qty).to eql(10)
        end
    end
end

describe PineappleOrder do
    describe '#get attributes of first pack' do
        it 'returns Pack.new(3, 6.99)' do
            pineappleOrder = PineappleOrder.new(100)
            expect(pineappleOrder.packs[0].qty).to eql(2)
            expect(pineappleOrder.packs[0].price).to eql(9.95)
            expect(pineappleOrder.packs[0].value).to eql(2/9.95)
        end
    end
end

describe PineappleOrder do
    describe '#get number of packs offered' do
        it 'returns 3' do
            pineappleOrder = PineappleOrder.new(1)
            expect(pineappleOrder.packs.length).to eql(3)            
        end
    end
end

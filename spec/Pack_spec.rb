require 'rspec'
require_relative '../lib/Pack.rb'

describe Pack do
    describe '#get quantity in pack' do
        it 'returns 3' do
            pack = Pack.new(3, 6.99)
            expect(pack.qty).to eql(3)
        end
    end
end

describe Pack do
    describe '#get price of pack' do
        it 'returns 6.99' do
            pack = Pack.new(3, 6.99)
            expect(pack.price).to eql(6.99)
        end
    end
end

describe Pack do
    describe '#get value of pack' do
        it 'returns 3/6.99' do
            pack = Pack.new(3, 6.99)
            expect(pack.value).to eql(3/6.99)
        end
    end
end
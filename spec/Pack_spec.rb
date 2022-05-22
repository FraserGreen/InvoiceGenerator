require 'rspec'
require_relative '../lib/Pack.rb'

RSpec.describe Pack do
    describe '#get quantity in pack' do
        it 'returns 3' do
            pack = Pack.new(3, 6.99)
            expect(pack.qty).to eql(3)
        end
    end

    describe '#get price of pack' do
        it 'returns 6.99' do
            pack = Pack.new(3, 6.99)
            expect(pack.price).to eql(6.99)
        end
    end
end
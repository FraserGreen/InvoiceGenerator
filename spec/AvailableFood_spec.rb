require 'rspec'
require_relative '../lib/AvailableFood.rb'

RSpec.describe AvailableFood do
    describe 'get first watermelon pack' do
        it 'returns Pack object' do
            expect(AvailableFood.packs["Watermelon"][0].price).to eql(6.99)
        end
    end

    describe 'get total number of available packs' do
        it 'returns 8' do
            len = 0
            AvailableFood.packs.length.times { |i|
                len += AvailableFood.packs.values[i].length
            }
            expect(len).to eql(8)
        end
    end

    describe 'get attributes of first watermelon pack' do
        it 'returns attributes of Pack.new(3, 6.99)' do
            expect(AvailableFood.packs["Watermelon"][0].qty).to eql(3)
            expect(AvailableFood.packs["Watermelon"][0].price).to eql(6.99)
            expect(AvailableFood.packs["Watermelon"][0].value).to eql(3/6.99)
        end
    end

    describe 'get number of watermelon packs offered' do
        it 'returns 3' do
            expect(AvailableFood.packs["Watermelon"].length).to eql(2)            
        end
    end

    describe 'check non-available food' do
        it 'returns nil' do
            expect(AvailableFood.packs["Banana"]).to eql(nil)            
        end
    end
end
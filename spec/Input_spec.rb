require 'rspec'
require 'stringio'
require_relative '../lib/Input.rb'

Rspec.describe Input do
    describe '#getName returns an element of AvailableFood.packs.keys, and nothing else' do
        it 'returns true if AvailableFood.packs.keys includes the result of #getname' do
            # let(:input) {io.puts nil}
            # let(:input) {io.puts "Banana"}
            # let(:input) {io.puts "Rockmelon"}

            # define the next input to be gathered by gets
            # $stdin = StringIO.new("This string is not an element of AvailableFood.packs.keys")
            allow(@stdin).to recieve(:gets).and_return("Rockmelon")
            Input.getName
            # expect(Input.getName).to_return("Rockmelon")

            #restores stdin to default state
            $stdin = STDIN
        end
    end
end
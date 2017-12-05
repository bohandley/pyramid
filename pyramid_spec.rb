require_relative('pyramid')
require 'rspec'

describe '.pyramid' do
  
  describe 'takes an integer and a string' do
    it 'returns a string' do
      expect(build_pyramid(1, '$')).to be_a String
    end

    it 'returns a string with num amount of new lines' do
      expect(build_pyramid(3, '#').scan("\n").count).to eq 3 
    end
  end

end
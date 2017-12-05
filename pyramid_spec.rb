require_relative('pyramid')
require 'rspec'

describe 'Fizz-buzz' do
  
  describe 'takes an integer and a string' do
    it 'returns a string' do
      expect(build_pyramid(1, '$')).to eq '$'
    end
  end

end
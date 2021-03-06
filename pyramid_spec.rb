require_relative('pyramid')
require 'rspec'

describe 'build_pyramid' do
  
  describe 'takes an integer and a string' do
    it 'returns a string' do
      expect(build_pyramid(1, '$')).to be_a String
    end

    it 'returns a string with num amount of new lines' do
      expect(build_pyramid(3, '#').scan("\n").count).to eq 3 
    end
  end

  describe 'padding' do
    it 'add num - index - 1 amount of spaces before the first char of each line' do
      expect(padding(4, 2)).to eq ' '
    end
  end

  describe 'row' do
    it 'creates a row with the charand a space multiplied by index + 1 + \n' do
      expect(row('%', 3)).to eq "% % % % \n"
    end
  end

  describe 'error handling' do
    it 'raises an error if num is not an integer' do
      expect { build_pyramid('3', 'r') }. to raise_error ArgumentError
    end

    it 'raises an error if char is not a string' do
      expect { build_pyramid(3, 3) }. to raise_error ArgumentError
    end
  end
end



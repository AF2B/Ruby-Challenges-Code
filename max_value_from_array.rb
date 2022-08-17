require 'rspec'

def max_value_array(array_of_integers)
  array_of_integers.max
end

describe 'max_value_array' do
  context 'when called the method' do
    it 'should return the max value of the array' do
      test_array = [1, 20, 50, 80, 100]
      expect(max_value_array(test_array)).to eq(100)
    end
  end
end

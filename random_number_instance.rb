require 'rspec'

def random_number_array
  Array.new(10) { rand(1..100) }
end

describe 'random_number_array' do
  context 'when i called the method' do
    it 'should return an array of random numbers' do
      random_one = random_number_array
      random_two = random_number_array

      expect(random_number_array).to be_a(Array)
      expect(random_number_array.length).to eq(10)
      expect(random_number_array.all? { |num| num.is_a?(Integer) }).to be true
      expect(random_one).to_not eq(random_two)
    end
  end
end

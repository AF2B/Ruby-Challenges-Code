require 'rspec'

string_array = [
  'This is a first string100%',
  'This is a second string30%',
  'Ruby is amazing!!!100%',
  'Ruby is awesome!!!80%',
  'Ruby with React is one hundred plus plus percent!100%',
  'Sass, the most awesome css preprocessor65%',
  'Git is necessary for any project20%'
]

def string_parser(array_string)
  result_array = []

  array_string.each do |string|
    result_array << string.match(/\d+%/)[0].delete('%').to_i
  end
  result_array
end

describe 'String Parser' do
  context 'att the string array' do
    it 'should return just a percentage values' do
      expect(string_parser(string_array)).to eq([100, 30, 100, 80, 100, 65, 20])
    end
  end
end

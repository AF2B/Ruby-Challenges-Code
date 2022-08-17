require 'rspec'

str = 'Ruby was created by Yukihiro Matsumoto'

def str_reverse(string)
  string.split.reverse.join(' ')
  # result = ''
  # result = string.split
  # result = result.reverse
  # result.join(' ')
end

describe 'str_reverse' do
  context 'at the string' do
    it 'should return a reversed string' do
      string_test = 'Ruby is awesome'
      expect(str_reverse(string_test)).to eq('awesome is Ruby')
      expect(str_reverse(str)).to eq('Matsumoto Yukihiro by created was Ruby')
    end
  end
end

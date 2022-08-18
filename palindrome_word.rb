require 'rspec'

def palindrome_word?(word)
  word == word.reverse
end

describe 'palindrome_word?' do
  context 'when word is palindrome' do
    it 'returns true' do
      string = 'racecar'
      expect(palindrome_word?(string)).to be true
      expect(palindrome_word?('kayak')).to be true
      expect(palindrome_word?('ruby')).to be false
    end
  end
end
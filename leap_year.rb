require 'rspec'

def leap_years(year1, year2)
  (year1..year2).select do |year|
    (year % 400).zero? || (year % 100 != 0 && (year % 4).zero?)
  end
end

describe 'leap_year?' do
  context 'when given two years' do
    it 'should return leap years between the two years' do
      expect(leap_years(2000, 2016)).to eq([2000, 2004, 2008, 2012, 2016])
    end
  end
end

# roman_numeral_arabic.rb

require './roman_numeral_arabic'

RSpec.describe RomanNumeral do
  describe '#arabic_to_roman' do
    context 'when pass good value' do
      let(:digit_arabic) { RomanNumeral.new('MCMXCIX', 20) }

      it 'return XX' do
        expect(digit_arabic.arabic_to_roman).to eq('XX')
      end

      it 'return error' do
        expect(digit_arabic.roman_to_arabic).to eq(1999)
      end
    end

    context 'when pass bad value' do
      let(:digit_arabic) { RomanNumeral.new('IIIVMLK', 1000000000000) }
      let(:digit_arabic_2) { RomanNumeral.new('GGG', 100)}

      it 'return error' do
        expect(digit_arabic.arabic_to_roman).to eq('error')
      end

      it 'return a demand for valid roman numeral' do
        expect(digit_arabic_2.roman_to_arabic).to eq('Please enter a valid numeral number')
      end
    end

  end
end

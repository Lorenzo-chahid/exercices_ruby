# roman_numeral_arabic.rb

require './roman_numeral_arabic'

RSpec.describe RomanNumeral do
  describe '#roman_to_arabic' do
    context 'when pass good value' do
      let(:digit_arabic) { RomanNumeral.new('MCMXCIX') }

      it 'return num' do
        expect(digit_arabic.roman_to_arabic).to eq(1999)
      end
    end


    let(:digit_arabic) { RomanNumeral.new('MCMXCIX') }

    it 'return original str' do
      digit_arabic.roman_to_arabic

      expect(digit_arabic.str).to eq('MCMXCIX')
    end

    context 'when pass bad value' do
      let(:digit_arabic) { RomanNumeral.new('IIIVMLK') }
      let(:digit_arabic_2) { RomanNumeral.new('GGG') }

      it 'return a demand for valid roman numeral' do
        expect(digit_arabic_2.roman_to_arabic).to eq('Please enter a valid roman numeral')
      end
    end
  end
end

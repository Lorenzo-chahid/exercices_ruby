# converter_number.rb

require './converter_number'

RSpec.describe RomanNumeral do
  describe '#arabic_to_roman' do
    context "when a pass a good value" do
      let(:digit_arabic) { RomanNumeral.new('MCMXCIX', 20) }

      it 'return XX' do
        expect(digit_arabic.arabic_to_roman).to eq('XX')
      end

      it 'return error' do
        expect(digit_arabic.roman_to_arabic).to eq(1999)
      end
    end

    context "when a pass a bad value" do
      let(:digit_arabic) { RomanNumeral.new('IIIVMLK', 1000000000000) }

      it 'return XX' do
        expect(digit_arabic.arabic_to_roman).to eq('error')
      end

      it 'return error' do
        expect(digit_arabic.roman_to_arabic).to eq("Please enter a valid numeral number")
      end
    end

  end
end

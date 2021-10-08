# roman_numeral_arabic.rb

require './roman_numeral_arabic'

RSpec.describe RomanNumeral do
  describe '#to_i' do


    context 'when pass good value' do
      let(:digit_arabic) { RomanNumeral.new('MCMXCIX') }

      it 'return num' do
        expect(digit_arabic.to_i).to eq(1999)
      end
    end


    let(:digit_arabic) { RomanNumeral.new('MCMXCIX') }

    it 'return original to_s' do
      digit_arabic.to_i

      expect(digit_arabic.to_s).to eq('MCMXCIX')
    end

    it 'return num' do
      digit_arabic.to_i
      expect(digit_arabic.to_i).to eq(1999)
    end

    context 'when pass bad value' do

      let(:item) { RomanNumeral.new("GGG") }

      it 'return 0' do
        expect(item.to_i).to eq(0)
      end
    end
  end
end

class Converter

  def converter_to_arabic(roman_numeral)
    test = roman_numeral.split("")
    alpha.reduce(0) do |ac, number|
      # ac = 0
      # number = [ 'X','10]
      key, value = number
      # key = 'X'
      # value = 10
      test.each do |el|
        if el == key
          ac + value
        end
      end
      ac
    end
  end

  private

  def alpha
    {
      'X' => 10,
      'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
    }
  end

end




a = Converter.new

puts a.converter_to_arabic('XX')


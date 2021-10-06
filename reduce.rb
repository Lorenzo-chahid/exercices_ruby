class Converter
  def roman_to_arabic(str)
    # init result
    result = 0
    # for each value in my hash
    alpha.each do |roman|
      # while str begin with my value hash (is true)
      puts str
      while str.start_with?(roman[1])
        # add key (like a value) to
        result += roman[0]
        # each iteration I slice (cut) my word
        str = str.slice(roman[1].length, str.length)
        # str with value "XXV" after that equal "XV" .. "V"... "" and "".start_with? = false
      end
    end
  end

  private

  def alpha
    {
      10 => 'X',
      9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
    }
  end

end




a = Converter.new
b = Converter.new


puts b.roman_to_arabic('XXV')
class Converter
  def roman_to_arabic(str)
    # init result
    result = 0
    # for each value in my hash
    alpha.values.each do |roman|
      # while str begin with my value hash (is true)
      while str.start_with?(roman)
        puts "true"
        str = "wavier"
      end
    end
    # return my result
    result
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



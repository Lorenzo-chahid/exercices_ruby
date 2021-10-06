class RomanNumeral
  attr_accessor :str, :result

  def initialize(str)
    @result = 0
    @str = str
  end



  def to_i
    return @result if @result > 0

    str = @str
    alpha.values.each do |roman|
      while str.start_with?(roman)
        @result += alpha.invert[roman]
        str = str.slice(roman.length, str.length)
      end
    end
    if str.length > 0
      @result = 0
    end
    @result
  end

  private

  def alpha
    {
      1000 => 'M',
      900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X',
      9 => 'IX', 5 => 'VXX', 4 => 'IV', 1 => 'I'
    }
  end
end

a = RomanNumeral.new("MCMXCI")
puts a.str
puts a.to_i
require 'byebug'

class RomanNumeral < Numeric
  def initialize(str)
    @str = str

    calculate_arabic
  end

  def to_s
    @str
  end

  def to_i
    @result
  end

  private

  def calculate_arabic
    @result = 0

    str = @str
    alpha.each_pair do |arabic, roman|
      while str.start_with?(roman)
        @result += arabic
        str = str.slice(roman.length, str.length)
      end
    end
  end

  def alpha
    {
      1000 => 'M',
      900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X',
      9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
    }
  end
end

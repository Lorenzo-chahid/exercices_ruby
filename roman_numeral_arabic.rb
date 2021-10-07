require "byebug"

class RomanNumeral
  attr_accessor :str, :result

  def initialize(str)
    @result = 0
    @str = str
  end

  def result
    @result ||= to_i
  end

  def to_i
    return @result if @result.positive?

    str = @str
    alpha.each do |roman|
      while str.start_with?(roman[1])
        @result += roman[0]
        str = str.slice(roman[1].length, str.length)
      end
    end
    @result = 0 unless str.empty?
    @result
  end

  private

  def alpha
    {
      1000 => 'M',
      900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X',
      9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
    }
  end
end
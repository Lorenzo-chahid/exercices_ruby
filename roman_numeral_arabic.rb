require 'byebug'

class RomanNumeral
  attr_accessor :to_s

  def initialize(str)
    @result = 0
    @to_s = str
  end

  def to_i
    @to_i ||= begin
      @result = 0
      return @result if @result.positive?

      str = @to_s
      alpha.each do |roman|
        while str.start_with?(roman[1])
          @result += roman[0]
          str = str.slice(roman[1].length, str.length)
        end
      end
      @result = 0 unless str.empty?
      @result
    end
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

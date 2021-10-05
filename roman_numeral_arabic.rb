class RomanNumeral
  attr_accessor :str, :num

  def initialize(str, num)
    @str = str
    @num = num
  end

  def arabic_to_roman
    return 'error' if @num > 4000

    alpha.reduce('') do |ac, number|
      key, value = number
      occurence, @num = @num.divmod(key)
      ac + value * occurence

    end
  end

  def roman_to_arabic
    result = 0
    alpha.values.each do |roman|
      while @str.start_with?(roman)
        result += alpha.invert[roman]
        @str = @str.slice(roman.length, @str.length)
      end
    end
    if @str.length > 0
      result = 'Please enter a valid numeral number'
    end
    result
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





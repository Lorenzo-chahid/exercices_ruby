class Converter
  def converter_to_roman(num)
    alpha.reduce('') do |ac, number|
      # ac = ''
      # number = [10 ,'X']
      key, value = number
      # key = 10
      # value = 'X'
      occurence, num = num.divmod(key)
      #  25.divmod(10)
      #  [2, 5]
      # occurence = 2
      # num = 5
      ac + value * occurence
      #  '' + 'X' * 2
      # 'XX'
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
a = Converter.new
b = Converter.new
c = Converter.new
d = Converter.new



puts c.converter_to_roman(25)
puts a.converter_to_roman(256)







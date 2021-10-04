class Converter


  def converter_to_roman(num)
    alpha.reduce('') do |ac, number|
      key, value = number
      occurence, num = num.divmod(key)
      ac + value*occurence
    end
  end

  private
  def alpha
    {
      1000 => 'M',
      900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50  => 'L', 40  => 'XL', 10  => 'X',
      9 => 'IX', 5   => 'V', 4   => 'IV', 1   => 'I'
    }
  end
end
a = Converter.new
b = Converter.new
c = Converter.new
d = Converter.new


puts a.converter_to_roman(1000)
puts b.converter_to_roman(789)







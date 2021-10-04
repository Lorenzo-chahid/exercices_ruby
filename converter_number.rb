class Converter


  def converter_to_roman(num)
    alpha_roman = {
      1000 => 'M',
      900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50  => 'L', 40  => 'XL', 10  => 'X',
      9 => 'IX', 5   => 'V', 4   => 'IV', 1   => 'I'
    }
    alpha_roman.reduce('') do |ac, number|
      key, value = number
      occurence, num = num.divmod(key)
      puts "Here my accumulator #{ac}"
      puts "here my number #{number}"
      ac + value*occurence
    end
  end

end
a = Converter.new
b = Converter.new
c = Converter.new
d = Converter.new


puts a.converter_to_roman(1000)
puts b.converter_to_roman(789)







class Converter

  def converter_to_arabic(num)
    alpha.reduce(0) do |ac, number|
      # ac = 0
      # number = [ 'X','10]
      key, value = number
      # key = 'X'
      # value = 10

    end
  end

  private

  def alpha
    {
      'X' => 10,
      'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
    }
  end

end







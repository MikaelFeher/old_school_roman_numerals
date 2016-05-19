puts 'I can help you convert numbers to roman numerals.'
puts 'Enter a number:'
num = gets.to_i
puts ''


def old_school_roman_numerals(num)

  conv_num = num
  result = []

  while true
    case conv_num
    when >= 1000 then
      puts 'in the thousands'
      m = conv_num / 1000
      conv_num -= (m * 1000)
      result.push('M' * m)
    when < 1000 && >= 500 then
      d = conv_num / 500
      conv_num -= (d * 500)
      result.push('D' * d)
    when < 500 && >= 100 then
      c = conv_num / 100
      conv_num -= (c * 100)
      result.push('C' * c)
    when < 100 && >= 50 then
      l = conv_num / 50
      conv_num -= (l * 50)
      result.push('L' * l)
    when < 50 && >= 10 then
      x = conv_num / 10
      conv_num -= (x * 10)
      result.push('X' * x)
    when < 10 && >= 5 then
      v = conv_num / 5
      conv_num -= (v * 5)
      result.push('V' * v)
    when < 5 && >= 1 then
      i = conv_num / 1
      conv_num -= (i * 1)
      result.push('I' * i)
    end
    break if conv_num == 0
  end
  result.each do |roman|
    print roman
  end
end





=begin
def thousand()
  m = conv_num / 1000
  conv_num -= (m * 1000)
  result.push('M' * m)
end
=end


puts ''
puts ''

old_school_roman_numerals num

def main
  puts 'I can help you convert numbers to roman numerals.'
  puts 'Enter a number:'
  num = gets.to_i
  puts ''
  conv_num = num

  conversion_engine conv_num

  puts ''
  puts ''
end

def conversion_engine(conv_num)

  result = []

  while true

    case
    when conv_num >= 1000 then
      m = conv_num / 1000
      conv_num -= (m * 1000)
      result.push('M' * m)
    when conv_num < 1000 && conv_num >= 500 then
      m = conv_num / 500
      conv_num -= (m * 500)
      result.push('D' * m)
    when conv_num < 500 && conv_num >= 100 then
      m = conv_num / 100
      conv_num -= (m * 100)
      result.push('C' * m)
    when conv_num < 100 && conv_num >= 50 then
      m = conv_num / 50
      conv_num -= (m * 50)
      result.push('L' * m)
    when conv_num < 50 && conv_num >= 10 then
      m = conv_num / 10
      conv_num -= (m * 10)
      result.push('X' * m)
    when conv_num < 10 && conv_num >= 5 then
      m = conv_num / 5
      conv_num -= (m * 5)
      result.push('V' * m)
    when conv_num < 5 && conv_num >= 1 then
      m = conv_num / 1
      conv_num -= (m * 1)
      result.push('I' * m)
    end

    break if conv_num == 0

  end

  result.each do |roman|
    print roman
  end

end

main

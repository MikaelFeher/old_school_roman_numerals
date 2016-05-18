puts 'I can help you convert numbers to roman numerals.'
puts 'Enter a number:'
num = gets.to_i
puts ''


def old_school_roman_numerals(num)

  conv_num = num
  result = []

    while true
      case
        when conv_num > 1000 then
          m = conv_num / 1000
          conv_num -= (m * 1000)
          result.push('M' * m)
        when conv_num < 1000 && conv_num >= 500 then
          d = conv_num / 500
          conv_num -= (d * 500)
          result.push('D' * d)
        when conv_num < 500 && conv_num >= 100 then
          c = conv_num / 100
          conv_num -= (c * 100)
          result.push('C' * c)
        when conv_num < 100 && conv_num >= 50 then
          l = conv_num / 50
          conv_num -= (l * 50)
          result.push('L' * l)
        when conv_num < 50 && conv_num >= 10 then
          x = conv_num / 10
          conv_num -= (x * 10)
          result.push('X' * x)
        when conv_num < 10 && conv_num >= 5 then
          v = conv_num / 5
          conv_num -= (v * 5)
          result.push('V' * v)
        when conv_num < 5 && conv_num >= 1 then
          i = conv_num / 1
          conv_num -= (i * 1)
          result.push('I' * i)
        end
    break if conv_num == 0
    end

    result.each do |roman|
      print roman
    end
    puts ''
    puts ''
end


old_school_roman_numerals num




=begin
  def conversion(num)
  new_num
  case
  when divisible_by_thousand?(num) then 'M' * new_num
  end
end

def divisible_by_thousand?(num)
  is_more_than_zero(num, 1000)
  divide(num, 1000)
end

def divisible_by_five_hundred?(num)
  is_more_than_zero(num, 500)
  divide(num, 500)
end

def divisible_by_hundred?(num)
  is_more_than_zero(num, 100)
  divide(num, 100)
end

def divisible_by_fifty?(num)
  is_more_than_zero(num, 50)
  divide(num, 50)
end

def divisible_by_ten?(num)
  is_more_than_zero(num, 10)
  divide(num, 10)
end

def divisible_by_five?(num)
  is_more_than_zero(num, 5)
  divide(num, 5)
end

def divisible_by_one?(num)
  is_more_than_zero(num, 1)
  divide(num, 1)
end

def is_more_than_zero(num, divider)
  num / divider > 0
end

def divide(num, divider)
  new_num = num / divider
end
=end

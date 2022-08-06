# frozen_string_literal: true

def main
  n, a, b = gets.chomp.split(' ').map(&:to_i)

  sum = 0
  (1..n).each do |i|
    sum_of_each_digit_i = sum_of_each_digit(i)
    sum += i if sum_of_each_digit_i >= a && b >= sum_of_each_digit_i
  end
  puts sum
end

def sum_of_each_digit(num)
  res = 0
  while num != 0
    div, rem = num.divmod(10)
    res += rem
    num = div
  end
  res
end

main if __FILE__ == $PROGRAM_NAME

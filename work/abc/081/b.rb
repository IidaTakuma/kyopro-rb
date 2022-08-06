# frozen_string_literal: true

INF = 100_000

def main
  n = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)

  ans = INF

  a.each do |elem|
    ans = [ans, number_of_times_which_can_be_devided_by_2(elem)].min
  end

  puts ans
end

def number_of_times_which_can_be_devided_by_2(num)
  count = 0
  loop do
    return count if num.odd?

    count += 1
    num /= 2
  end
end

main if __FILE__ == $PROGRAM_NAME

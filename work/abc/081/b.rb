INF = 100000

def main
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)

  ans = INF

  a.each do |elem|
    ans = [ans, number_of_times_which_can_be_devided_by_2(elem)].min
  end

  puts ans
end

def number_of_times_which_can_be_devided_by_2(num)
  count  = 0
  while true do
    return count if num % 2 == 1
    count += 1
    num /= 2
  end
end

main if __FILE__ == $0

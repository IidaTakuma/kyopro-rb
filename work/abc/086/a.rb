def main
  a, b = gets.chomp.split(' ').map(&:to_i)
  prod = a * b
  return puts 'Odd' if prod % 2 == 1
  puts 'Even'
end

main if __FILE__ == $0

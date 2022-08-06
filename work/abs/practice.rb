# frozen_string_literal: true

def main
  a = gets.to_i
  b, c = gets.chomp.split(' ').map(&:to_i)
  s = gets.chomp

  puts "#{a + b + c} #{s}"
end

main if __FILE__ == $PROGRAM_NAME

# frozen_string_literal: true

def main
  a, b = gets.split(' ').map(&:to_i)
  if a >= 13
    puts b
  elsif a >= 6
    puts b / 2
  else
    puts 0
  end
end

main if __FILE__ == $PROGRAM_NAME

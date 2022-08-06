# frozen_string_literal: true

def main
  a, b = gets.chomp.split.map(&:to_i)
  prod = a * b
  return puts 'Odd' if prod.odd?

  puts 'Even'
end

main if __FILE__ == $PROGRAM_NAME

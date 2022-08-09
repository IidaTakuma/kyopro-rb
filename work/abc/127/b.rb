# frozen_string_literal: true

def main
  r, d, x = gets.chomp.split.map(&:to_i)

  10.times do
    x = (r * x) - d
    puts x
  end
end

main if __FILE__ == $PROGRAM_NAME

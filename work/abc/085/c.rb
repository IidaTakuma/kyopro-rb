# frozen_string_literal: true

def main
  n, y = gets.chomp.split.map(&:to_i)
  y /= 1000

  (n + 1).times do |i| # i: Number of 1000-yen bills
    next unless ((y - i) % 5).zero?
    next unless (y - i) >= (n - i) * 5 && (y - i) <= (n - i) * 10

    (n - i + 1).times do |j| # j: Number of 5000-yen bills
      if i + (j * 5) + ((n - i - j) * 10) == y
        puts "#{n - i - j} #{j} #{i}"
        exit
      end
    end
  end
  puts '-1 -1 -1'
end

main if __FILE__ == $PROGRAM_NAME

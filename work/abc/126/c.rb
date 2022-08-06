# frozen_string_literal: true

def main
  n, k = Input.split_by_delimitor

  total_prob = 0r
  (1..n).each do |i|
    prob = 1r
    while i < k
      prob /= 2r
      i *= 2
    end
    total_prob += prob
  end
  puts (total_prob / n).to_f
  exit
end

class Input
  def self.one_line
    gets
  end

  def self.one_number
    gets.to_i
  end

  def self.split_by_delimitor(delimitor: ' ', type: 'Int')
    case type
    when 'Int'
      gets.split(delimitor).map(&:to_i)
    when 'String'
      gets.split(delimitor)
    end
  end
end

main if __FILE__ == $PROGRAM_NAME

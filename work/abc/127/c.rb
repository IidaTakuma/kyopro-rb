# frozen_string_literal: true

def main
  n, m = gets.chomp.split.map(&:to_i)
  ls = []
  rs = []

  m.times do
    l, r = gets.chomp.split.map(&:to_i)
    ls << l
    rs << r
  end

  left = 0
  right = 100_000

  m.times do |i|
    left = [left, ls[i]].max
    right = [right, rs[i]].min
  end

  ans = right - left + 1
  puts [[ans, 0].max, n].min
end

main if __FILE__ == $PROGRAM_NAME

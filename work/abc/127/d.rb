# frozen_string_literal: false

Bc = Struct.new(:b, :c)

def main
  n, m = gets.chomp.split.map(&:to_i)
  as = gets.chomp.split.map(&:to_i)
  bcs = []
  m.times do
    b, c = gets.chomp.split.map(&:to_i)
    bcs << Bc.new(b, c)
  end

  sorted_a = as.sort.reverse
  rev_sorted_bcs = bcs.sort {|x, y| y.c <=> x.c }

  d = []
  rev_sorted_bcs.each do |bc|
    break if d.size == n

    bc.b.times do
      d << bc.c
      break if d.size == n
    end
  end

  a_sum = [0]
  sorted_a.each do |a|
    a_sum << (a_sum[-1] + a)
  end

  d_sum = [0]
  d.each do |e|
    d_sum << (d_sum[-1] + e)
  end

  max = 0
  [a_sum.size, d_sum.size].min.times do |i|
    sum = a_sum[n - i] + d_sum[i]
    if sum < max
      puts max
      exit
    end
    max = sum
  end

  puts max
  exit
end

main if __FILE__ == $PROGRAM_NAME

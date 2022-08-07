# frozen_string_literal: true

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

sorted_a = a.sort.reverse

ans = 0

sorted_a.each_with_index do |elem, i|
  if i.even?
    ans += elem
  else
    ans -= elem
  end
end

puts ans

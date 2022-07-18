def main
  a = gets.to_i
  b = gets.to_i
  c = gets.to_i
  x = gets.to_i

  patterns = 0

  (a+1).times do |ac|
    ac_total = ac * 500
    break if ac_total > x
    (b+1).times do |bc|
      bc_total = bc * 100
      break if ac_total + bc_total > x
      (c+1).times do |cc|
        cc_total = cc * 50
        break if ac_total + bc_total + cc_total > x
        patterns += 1 if ac_total + bc_total + cc_total == x
      end
    end
  end

  puts patterns
end

main if __FILE__ == $0

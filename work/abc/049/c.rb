# frozen_string_literal: true

def main
  s = gets.chomp.reverse

  index = 0
  until index == s.size
    last_five_str = s.slice(index, 5)
    if %w[maerd esare].include?(last_five_str)
      index += 5
      next
    end

    last_six_str = s.slice(index, 6)
    if last_six_str == 'resare'
      index += 6
      next
    end

    last_seven_str = s.slice(index, 7)
    if last_seven_str == 'remaerd'
      index += 7
      next
    end

    puts 'NO'
    exit
  end

  puts 'YES'
end

main if __FILE__ == $PROGRAM_NAME

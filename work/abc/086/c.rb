# frozen_string_literal: true

def main
  n = gets.chomp.to_i

  ts = []
  xs = []
  ys = []

  n.times do
    t, x, y = gets.chomp.split.map(&:to_i)
    ts << t
    xs << x
    ys << y
  end

  now_t = 0
  now_x = 0
  now_y = 0

  n.times do |i|
    distance = (now_x - xs[i]).abs + (now_y - ys[i]).abs
    time = ts[i] - now_t
    if distance > time || (time - distance).odd?
      puts 'No'
      exit
    end
    now_t = ts[i]
    now_x = xs[i]
    now_y = ys[i]
  end

  puts 'Yes'
end

main if __FILE__ == $PROGRAM_NAME

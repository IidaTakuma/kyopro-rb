# frozen_string_literal: true

require 'set'

def main
  n = gets.chomp.to_i
  d = []

  n.times { d << gets.chomp.to_i }

  puts d.to_set.size
end

main if __FILE__ == $PROGRAM_NAME

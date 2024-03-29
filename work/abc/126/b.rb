# frozen_string_literal: true

def main
  s = Input.one_line
  before = s.slice(0, 2).to_i
  after = s.slice(2, 4).to_i

  if before.zero? || after.zero?
    if before >= 1 && before <= 12
      puts 'MMYY'
    elsif after >= 1 && after <= 12
      puts 'YYMM'
    else
      puts 'NA'
    end
    exit
  end

  if before <= 12 && after <= 12
    puts 'AMBIGUOUS'
  elsif before <= 12
    puts 'MMYY'
  elsif after <= 12
    puts 'YYMM'
  else
    puts 'NA'
  end
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

def main
  input = Input.new
  n, k = input.split_by_delimitor
  s = input.one_line

  s[k - 1] = s[k - 1].downcase
  puts s
end

class Input
  def initialize
    pass
  end

  # 入力(1行)
  def one_line
    @value = gets
  end

  # 入力(数値)
  def one_number
    @value = gets.to_i
  end

  def split_by_delimitor(delimitor: ' ', type: 'Int')
    case type
    when 'Int'
      @value = gets.split(delimitor).map(&:to_i)
    when 'String'
      @valie = gets.split(delimitor)
    end
  end
end

main if __FILE__ == $0

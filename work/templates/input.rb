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

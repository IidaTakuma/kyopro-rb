# 隣接リスト
class AdjacencyMatrix
  attr_reader :v
  attr_accessor :graph

  def initialize(v:)
    @v = v
    @graph = Array.new(v) { [] }
  end

  def add_path(node_1:, node_2:, cost: 1)
    @graph[node_1] << [node_2, cost]
    @graph[node_2] << [node_1, cost]
  end

  def debug_print
    puts "graph_size: #{@v}"
    print @graph
    puts
  end
end

# How to Use

if __FILE__ == $0
  n = gets.to_i
  admat = AdjacencyMatrix.new(v: n)

  (n - 1).time do
    u, v, w = gets.split.map(&:to_i)
    admat.add_path(node_1: u, node_2: v, cost: w)
  end

end

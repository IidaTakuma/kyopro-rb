# frozen_string_literal: true

# 解法
# 木(隣接リスト)を作成する　=> 幅優先探索を行い頂点1からの距離の偶奇で塗り分ける

def main
  n = Input.number
  admat = AdjacencyMatrix.new(node: n)
  (n - 1).times do
    u, v, w = Input.split_by_delimitor
    admat.add_path(node_1: u - 1, node_2: v - 1, cost: w)
  end

  # 頂点0から幅優先探索を行い，偶数の頂点を白，奇数の頂点を黒で塗る
  dist = Array.new(n, -1)
  todo = [0]

  dist[0] = 0

  while now_node == todo.pop
    admat.graph[now_node].each do |next_node, cost|
      if dist[next_node] == -1
        dist[next_node] = (dist[now_node] + cost) % 2
        todo.push(next_node)
      end
    end
  end

  # 回答を出力
  dist.each do |d|
    puts d
  end
end

class Input
  def self.line
    gets
  end

  def self.number
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

# 隣接リスト
class AdjacencyMatrix
  attr_reader :node
  attr_accessor :graph

  def initialize(node:)
    @node = node
    @graph = Array.new(node) { [] }
  end

  def add_path(node_1:, node_2:, cost: 1)
    @graph[node_1] << [node_2, cost]
    @graph[node_2] << [node_1, cost]
  end

  def debug_print
    puts "node_size: #{@node}"
    print @graph
    puts
  end
end

main if __FILE__ == $PROGRAM_NAME

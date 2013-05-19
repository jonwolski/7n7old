class Tree
  attr_accessor :children, :node_name

  def visit_all( &block )
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end

  def initialize(name, tree_hash )
    @children = []
    @node_name = name
    tree_hash.each { |key, value|
      @children.push Tree.new(key, value)
    }
  end

  def to_s
    "'#{@node_name}': {#{@children.join ", "}}"
  end
end

#!/usr/bin/env ruby
require "./Tree"
ruby_tree = Tree.new(
  "family",
  {'grandpa' => {
      'dad' => {
        'child 1' => {}, 
        'child 2' => {}
      },
      'uncle' => {
        'child 3' => {},
        'child 4' => {}
      }
    }
  }
)
puts ruby_tree.to_s
ruby_tree.visit_all {|t| puts t.node_name}


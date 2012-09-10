#!/usr/bin/env ruby
#initialize a 16 member array
a = (1..16).to_a
#output four separate times using only #each
a[0...4].each {|k| puts k}
a[4...8].each {|k| puts k}
a[8...12].each {|k| puts k}
a[12...16].each {|k| puts k}

# again using only #each_slice
a.each_slice(4) {|k| puts k}

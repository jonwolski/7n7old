#!/usr/bin/env ruby
require "./acts_as_csv"

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| puts row.one}

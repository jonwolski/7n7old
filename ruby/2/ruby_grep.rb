#!/usr/bin/env ruby
def usage
  puts "usage: ruby_grep <pattern> [file1] [file2] ..."
  return 1
end

def run
  if ARGV.length < 1
    return usage
  end

  regex = Regexp.new ARGV.first

  # prepare ARGF by shifting the pattern option out of the way
  ARGV.shift

  ARGF.lines do |line|
    puts line if regex.match line
  end
end

run

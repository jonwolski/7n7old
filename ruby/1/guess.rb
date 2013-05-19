#!/usr/bin/env ruby
upper_bound = 1000
target = rand(upper_bound + 1)
guess = -1

puts "pick a number from 1 to #{upper_bound}"

while guess != target do
  guess = gets.to_i
  if guess < target
    puts "too low"
  end
  if guess > target
    puts "too high"
  end
end
puts "the target was #{target}"

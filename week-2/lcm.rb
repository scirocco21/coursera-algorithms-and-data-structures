#!/usr/bin/env ruby
# by Andronik Ordian

def gcd(a, b)
  # find the smallest number among input, if any, and set iterator equal to it
  c = [a,b].min
  # lowest common denominator of two numbers will be one, so this is the stop clause
  until c == 1
    # when the two numbers can be divided without remainder, exit function
    if a%c == 0 && b%c == 0
      return c
    end
    # otherwise continue the loop until the iterator equals 1
    c = c - 1
  end
  return c
end

def lcm(a, b)
  # calculate least common multiplier in terms of greatest common divisor
  return a/gcd(a,b) * b
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{lcm(a, b)}"
end

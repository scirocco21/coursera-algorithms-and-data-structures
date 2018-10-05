#!/usr/bin/env ruby
# by Andronik Ordian
def get_change(n)
  count = 0
  coins = [1, 5, 10]
  while n > 0
    if n >= 10
      n -= 10
    elsif n >= 5
      n -= 5
    else
      n -= 1
    end
    count += 1
  end
  return count
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{get_change(n)}"
end

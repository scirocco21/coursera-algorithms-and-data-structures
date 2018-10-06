def optimal_summands(n)
  summands = []
  temp = 0
  i = 1
  while i <= n
    summands.push(i)
    temp += i
    i += 1

    if temp > n
      excess = temp - n
      summands.delete(excess)
      return summands
    elsif temp == n
      return summands
    end
  end
end

if __FILE__ == $0
  n = gets.to_i
  summands = optimal_summands(n)
  puts "#{summands.size}"
  puts "#{summands.join(' ')}"
end

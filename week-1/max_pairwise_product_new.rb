def max_pairwise_product(a)
  largest = a[0]
  a.each do |number|
    if largest < number 
      largest = number
    end
  end
  largest_index = a.index(largest)
  temp = a[a.length - 1]
  a[largest_index] = temp
  a[a.length-1] = largest
  
  new_array = a[0..a.length - 2]
  second_largest = new_array[0]
  new_array.each do |number|
    if second_largest < number
      second_largest = number
    end
  end
    return largest * second_largest
end

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  puts "#{max_pairwise_product(a)}"
end
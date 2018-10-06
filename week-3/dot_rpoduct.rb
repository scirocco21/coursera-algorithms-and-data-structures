# efficiency constraints are (i) sorting two arrays of length n (assume at n log n) and (ii) two independent iterations of size n (2n). So Omega is n log n

def max_dot_product(a, b)
  sorted_a = a.sort.reverse
  sorted_b = b.sort.reverse
  products = []
  i = 0
  while i <  sorted_a.length
    product = sorted_a[i] * sorted_b[i]
    products.push(product)
    i += 1
  end
  sum = 0
  products.each do |num|
    sum += num
  end
  return sum
end

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a, b = data[1..n], data[n+1..2*n]
  puts "#{min_dot_product(a, b)}"
end

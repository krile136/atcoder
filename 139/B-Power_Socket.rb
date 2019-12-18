a, b = gets.strip.split.map(&:to_i)
n = 0
def calc(a,n)
  c = 1 + ( a - 1 ) * n
end

until calc(a, n) >= b 
  n += 1
end

puts n 
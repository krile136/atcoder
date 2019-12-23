# require 'prime'


# n = gets.strip.to_i

# # arr = [*1..n]

# def factorial4(n)
#   arr = [*(-n)..-1]
#   arr = arr.each_slice(4).map { |a, b, c, d| c ? a * c * (-1) : a }
#   loop do
#     return arr[0] if arr.length == 1
#     arr = arr.each_slice(2).map { |a, b| b ? a * b : a }
#   end
#   puts arr.join(' ')
# end

# factors = factorial4(n).abs.to_i.prime_division
# puts factors

N = gets.to_i
 
if N.odd?
  puts 0
  exit
end
 
def g(n, m)
  return 0 if n <= 0
 
  n / m + g(n / m, m)
end
 
n = N / 2
ans = 0
 
p g(n, 5)


# puts b


# puts arr.join(' ')

# ans = 1
# MOD = 1000000007

# (1..n.to_s.length).each do |i|
#   ans = ans * i % MOD
# end
# ans -= 1

# puts ans
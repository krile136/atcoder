N = gets.to_i
an = gets.strip.split.map(&:to_i)
num = 0

while an.all?(&:even?) do
  num += 1
  an = an.map{|a| a /2 }
end
puts num


# _n = gets.to_i
# as = gets.strip.split.map(&:to_i)
# cnt = 0
# while as.all?(&:even?) do
#     cnt = cnt.succ
#     as = as.map { |a| a / 2 }
# end

# puts cnt
n = gets.chomp.to_i
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
 
min = [a, b, c, d, e].min
 
p (n.to_f/min).ceil + 4


# これはほんと意味わからない

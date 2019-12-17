n = gets.to_i
mochis = n.times.map { gets.to_i }
puts mochis.uniq.size

# もちの数は最初のnをもとにgetsを繰り返し、配列を作る
# uniqで重複を取り除き、sizeでサイズを出せば最大の鏡餅の段数がわかる
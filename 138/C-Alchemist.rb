n = gets.strip.to_i
v = gets.strip.split.map(&:to_f)

v = v.sort!
(1..v.length-1).each do |i|
  v[i - 1 + 1] = (v[i -1 ] + v[i -1 +1])/2
end

puts v[v.length - 1].to_s


# 一見するとpermutationを使って重複無しの組み合わせを作り
# それを計算すれば良さそうだが、計算時間が間に合わない。
# そこで、適当に数字を並べてみた結果を見てみる
# 5                        
# 50 70 20 60 90
# この時、 74.325が最大値となる
# これは、配列を小さい順に並べて左から順に計算した結果と等しくなる。
# よって、入力の配列を小さい順にソートして計算している。
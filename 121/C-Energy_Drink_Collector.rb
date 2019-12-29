n,m = gets.split.map(&:to_i)
x = n.times.map{gets.split.map(&:to_i)}.sort_by{|w| w[0]}
 

puts x

ans = 0
x.each{|(a,b)|
  k = [b,m].min
  m -= k
  ans += a*k
}
 
p ans


# 4 30
# 6 18
# 2 5
# 3 10
# 7 9
# この時、４件の店があり、３０本を買う中で一番小さい金額を調べる
# 店のエナドリの価格と最大本数は[ [6, 18], [2, 5] [3, 10], [7, 9]]という二次元配列を作り
# sort_byで価格の少ない方で並び替える
# .sort_by{|w| w[0]}では、wには[6,10]が入り、w[0]は6、すなわちエナドリの価格が入ってくることになる
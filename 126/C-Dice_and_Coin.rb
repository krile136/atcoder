n, k = gets.strip.split.map(&:to_f)
ans = 0.0
(1..n).each do |i|
  l = [Math.log(k/i,2).ceil, 0].max
  tmp = 1 / (n * (2 ** l))
  ans += tmp
end
puts ans

# コインを振る回数の条件は、目の数*(2**n)>=kとなるnような整数nを求める
# 目の数をiとし、数式を整理すると
# 2**n >= k/i  となり
# n >= log2(k/i)　となる。実際には小数点が出てくるので、整数nとするためlog2(k/i).ceilで切り上げる
# 基本的には、(1/n) * ((1/2)**math.log(k/i),2)を足していけば良い
# math.log(n,m)は、底がm、数がnを表す
# 数が大きいと、上のlogの計算がマイナスに突入するが、それはサイコロを引いた時点でKを超えた時なので
# そのときはサイコロの出る確率である 1/n　を足してやれば良い。そのため、logの計算を0にすることで
# 2 ** 0 = 1となり、例題のn=100000, k=5でサイコロの目が5以上を引いたときは
# 1/(n*1)の結果を足し合わせていくことになる。
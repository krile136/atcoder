n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

class Array
  def lcm
    self.inject{|a,b| a.lcm(b)}
  end

  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

max = 1
(0..n-1).each do |i|
  tmp = 1
  l = []
  r = []
  l = a.slice(0..i-1) if i > 0
  r = a.slice(i+1..n-1) if i< n-1
  ar = l + r
  tmp = ar.gcd 
  max = tmp if ar.gcd > max
end
puts max

# これだと2秒に間に合わない



# N = gets.to_i
# A = gets.split.map &:to_i
# L = Array.new(N)
# R = Array.new(N)
 
# N.times do |i|
#   L[i] = if i.zero? then A[i] else A[i].gcd L[i-1] end
# end
 
# (N-1).downto(0) do |i|
#   R[i] = if i == N - 1 then A[i] else A[i].gcd R[i+1] end
# end
 
# ans = 0
# N.times do |i|
#   l = if i.zero? then 0 else L[i-1] end
#   r = if i == N - 1 then 0 else R[i+1] end
#   x = l.gcd(r)
#   ans = x if ans < x
# end
 
# puts ans


# 方針としては、Ai を書き換えることにした場合の最大公約数の最大値 Mi を全て求めることを高速に行い、
# Mi の最大値を出力します。
# まず、Ai を書き換える場合、残りの N − 1 個の最大公約数に書き換えれば、「整数 Ai を書き換える」操作
# は「整数 Ai を消す」操作と等価になります。
# さらに、整数 X と 整数 Y の最大公約数を gcd(X, Y ) と表すことすると、gcd は結合則が成り立ちます。
# すなわち、任意の整数 X, Y, Z について gcd(gcd(X, Y ), Z) = gcd(X, gcd(Y, Z)) です。簡単に言えば、gcd
# には「どこから計算しても結果は変わらない性質」があります*1
# (例えば、整数や行列同士の加算や乗算もそう
# ですが、減算は前から計算しなければなりません) このとき、次のテクニックが使えます。i = 1, 2, ..., N + 1
# について、L(i), R(i) を次のように定義します。
# L(i) := A1, A2, ..., Ai−1の最大公約数
# R(i) := Ai
# , Ai+1, ..., ANの最大公約数
# 便宜上、L(0) = R(N + 1) = 0 とし、全ての整数 X に対して gcd(0, X) = gcd(X, 0) = X とすることとし
# ます。すると、Ai を書き換える (すなわち、Ai を消す) ことにした場合、残りの N − 1 個の整数の最大公約
# 数 Mi は Mi = gcd(L(i), R(i + 1)) になります。さらに、L(i), R(i) は次の漸化式を計算することで高速に
# O(NlogA1 + NlogAN ) で求められます*2。
# L(0) = 0
# L(i + 1) = gcd(L(i), A(i))
# R(N + 1) = 0
# R(i) = gcd(R(i + 1), A(i))
# M1, M2, ..., MN が求まれば、答えはこれらの最大値 max(M1, M2, ..., MN ) になります。全体として計算量
# は O(NlogA1 + NlogAN ) となります。
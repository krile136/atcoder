l, r = gets.strip.split.map(&:to_i)
y = 2019

min = 10**9

(l..l+2018).each do |i|
  (i+1..l+2018).each do |j|
    if i < r  && j <= r
      m = (i * j) % y
      min = m if m < min
      if m == 0
        puts "0"
        exit
      end
    end
  end
end
puts min


# あまりは、割る数で必ずループする。2019なら、a%2019の結果は2019回でループする
# なので、iとjについて2019 * 2019　回の計算で全て済むことになる
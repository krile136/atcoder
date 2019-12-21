a, b, c, d = gets.strip.split.map(&:to_i)
lcm = c.lcm(d)
am1 = a - 1

c_count = b/c-(a-1)/c
d_count = b/d-(a-1)/d
lcm_count = b/lcm-(a-1)/lcm

puts ((b-a + 1)-(c_count + d_count - lcm_count)).to_s


# 1を引いているのは、10~5の数字だとして、10-5=5であるが、実際には5,6,7,8,9,10と６つの数字があるのでaから１を引いている



# # puts "#{c_count} : #{b / c - am1 / c}"
# # puts "#{d_count} : #{b / d - am1 / d}"
# # puts "#{lcm_count} : #{b / lcm - (am1 / lcm )}"

# puts "cの検証 #{(b-a+1)/c}  :  #{b / c - am1 / c} : #{(b-am1)/c}"
# puts "dの検証 #{(b-a+1)/d}  :  #{b / d - am1 / d} : #{(b-am1)/d}"



# puts b - a + 1 - ((b / c - am1 / c) + ( b / d - am1 / d) - (b / lcm - (am1 / lcm )) )

# puts "#{(40-10+1)/8} : #{40/8-(10-1)/8}"
# 上を実行すると、3:4になる。
# 数学的には：の前後で一致しているはず（31/8になる）が、全て整数型？のため
# 前者は31/8 = 3.875 → 3
# 後者は5 - 1.125 → 5 -1 = 4
# となる。
# これでABC131のC問題は後者で計算しないとダメみたい・・・こんなん気づくか!
# 確かに10~40までの8の倍数を数えると、16,24,32,40の４つある（悔しい）
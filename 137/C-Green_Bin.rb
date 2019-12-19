# n = gets.strip.to_i
# s = n.times.map{ gets.strip.split('') }

# ords = []
# ("a".ord*10.."z".ord*10).each do |i|
#   ords[i] = 0
# end

# ans = 0
# s.each do |st|
#   num = 0
#   st.map{|m| num += m.ord}
#   ords[num] += 1
#   ans += ords[num] - 1
# end

# puts ans

# テストケース通らない（涙）
# アルゴリズムはあってるっぽいけど配列よりハッシュの方が確実なのと
# どこかで間違えているかなぁ？

# ハッシュは最初にHash.new(x)とすることで、全てを0にしたものが作られる


N = gets.to_i
s_list = N.times.map { gets }
s_with_count = Hash.new(0)
total_count = 0
 
s_list.each do |s|
  c = s_with_count[s.chomp.chars.sort.join] += 1
  total_count += c - 1
end

p total_count


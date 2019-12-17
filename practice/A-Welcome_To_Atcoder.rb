a = gets.to_i
b, c = gets.strip.split.map(&:to_i)
s = gets.chomp

puts "#{a+b+c} #{s}\n"


# a = gets.to_i
# # スペース区切りの整数の入力
# b,c=gets.chomp.split(" ").map(&:to_i);
# # 文字列の入力
# s = gets.chomp
# # 出力
# print("#{a+b+c} #{s}\n")
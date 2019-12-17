n, a, b = gets.strip.split.map(&:to_i)
sums = 0
for i in 1..n do
  num_a = i
  num_b = 0
  (-4..0).each do |j| 
    n = (num_a / ( 10 ** (j*-1) )).floor
    if n > 0 then
      num_b += n
      num_a -= n*(10**(j*-1))
    end
  end
  if num_b >= a && num_b <= b then
    sums += i
  end 
end
puts sums


# n, a, b = gets.strip.split.map(&:to_i)

# # 各桁の和を求める
# 10で割ったあまりが、一番下の桁になる
# 例）100 % 10 = 0     125 % 10 = 5
# そのあとに10で割って桁を一つ下げてやる

# def digit_sum n
#     sum = 0
#     while n > 0 do
#         sum += n % 10
#         n /= 10
#     end
#     sum
# end

# ans = (1..n)
#         .map { |i| [i, digit_sum(i)] }
#         .select { |d| a <= d[1] && d[1] <= b }
#         .inject(0) { |sum, d| sum + d[0] }
# 各数字に対して、数の和をだす
# selectでa<d<bとなる数字を選択する


# puts ans
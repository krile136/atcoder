n = gets.to_i
an = gets.strip.split.map(&:to_i)

an.sort!{|a,b| b <=> a }

alice = 0
bob = 0

an.each_with_index do |num, i|
  if i.even? then
    alice += num
  else
    bob += num
  end
end

puts (alice - bob).to_s


# _n = gets.to_i
# as = gets.strip.split.map(&:to_i).sort.reverse

# alice = 0
# bob = 0

# until as.empty? do
#     alice += as.shift
#     break if as.empty?
#     bob += as.shift
# end

# puts (alice - bob)

# shiftは配列の要素を削除し、その要素を返す。
# よって、aliceに一番最初の大きいのを返したと同時にそれを削除している。
# それをからになるまで繰り返すのが模範解答
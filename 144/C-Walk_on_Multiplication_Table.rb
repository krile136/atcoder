require 'prime'

class Integer
  def my_divisor_list
    return [1] if self == 1
    Prime.prime_division(self).map do |e|
      Array.new(e[1]+1).map.with_index do |element, i|
        e[0]**i
      end
    end.inject{|p,q| p.product(q)}.map do |a|
      [a].flatten.inject(&:*)
    end.sort
  end
end

n = gets.strip.to_i
f = n.my_divisor_list
len = n - 1

(0..f.length-1).each do |i|
  x = f[i]
  y = n / f[i]
  d = x + y - 2
  len = d if d < len
end

puts len

# 約数を全て洗い出し、その組み合わせでの経路を全て計算する
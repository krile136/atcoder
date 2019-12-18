h, w = gets.strip.split.map(&:to_i)
s = h.times.map { gets.strip.split('') }

(1..h).each do |i|
  a = []
  (1..w).each do |j|
    if s[i-1][j-1] != "#"
      bomb = 0
      (i-1..i+1).each do |p|
        (j-1..j+1).each do |q|
          if 1<=p && p<=h && 1<=q && q<=w
            bomb += 1 if s[p-1][q-1] == "#"
          end
        end
      end
      a.push(bomb.to_s)
    else
      a.push("#")
    end
  end
  puts a.join('')
end
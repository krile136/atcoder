n, k, q = gets.strip.split.map(&:to_i)
a = q.times.map { gets.strip.to_i }

scores = (1..n).map{|i| i = 0 }

(1..q).each do |i|
  scores[a[i-1]-1] += 1
end
scores.map{|s|
            if s + ( k - q ) <= 0
              puts 'No'
            else
              puts 'Yes'
            end
          }
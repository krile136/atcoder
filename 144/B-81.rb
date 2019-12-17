n = gets.strip.to_i

(1..9).each do |i|
  if n % i == 0 && n / i < 10
    puts 'Yes'
    exit 0
  end
end

puts 'No'
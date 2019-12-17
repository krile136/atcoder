s = gets.strip
weather = ['Sunny', 'Cloudy', 'Rainy', 'Sunny']

puts weather[weather.find_index{|w| w == s} + 1]
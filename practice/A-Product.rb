a, b = gets.strip.split.map(&:to_i)
puts (a * b).odd? ? 'Odd' : 'Even'


# array = [1,2,3]
# array.map(&:to_s)
# => ["1", "2", "3"]
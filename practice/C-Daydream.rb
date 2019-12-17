# 文字列に対してwordsを組み合わせて同じ文字を作れるか？
# dreamとdreamerの区別などが大変だが、「後ろ」から見ていくとすぐに解決する
# s[-word.size, word.size]は、文字列の後ろからwordのながさからはじめ、wordの長さ分
# つまり、後ろから見てwordと一致するものを検索している

# 後ろから見てどの文字ともマッチしなければ、絶対にその文字は作れないので
# NOを出力してexit 0 でプログラムの終了を宣言している

s = gets.strip
words = ["dream", "dreamer", "erase", "eraser"]

until s.empty? do
  reduced = false
  words.map do |word|
    if s[-word.size, word.size] == word
      s = s[0..-word.size - 1]
      reduced = true
      break
    end
  end

  unless reduced
    puts 'NO'
    exit 0
  end
end

puts 'YES'

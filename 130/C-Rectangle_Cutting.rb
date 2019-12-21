w, h, x, y = gets.strip.split.map(&:to_f)
j = 0
j = 1 if x * 2 == w && y * 2 == h
puts "#{w * h / 2} #{j}" 


# https://atcoder.jp/contests/abc130/tasks/abc130_c
# x,yが枠の中にいる限り、真ん中の点とx,yを結ぶ直線で2分すれば
# ちょうど半分の大きさになる。
# このとき、x,yがど真ん中にいれば回答が複数あり、いなければ一つの直線に決まる。

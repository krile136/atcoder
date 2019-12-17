s = gets.strip.split("")
flag = true
(1..s.length).each do |i|
  if i.even?
    if s[i-1] == "R"
      flag = false
      break
    end
  else
    if s[i-1] == "L"
      flag = false
      break
    end
  end
end

if flag
  puts 'Yes'
else
  puts 'No'
end
def f(n)
  return n if n <= 1
  f(n-1) + f(n-2)
end

s = 0
(1..42).each do |i|
  s += f(i)
end

puts s
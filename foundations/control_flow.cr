x = 5.25

if 0 < x < 5
  puts "x < 5"
elsif x < 8
  puts "x < 8"
else
  puts "x < 5.0"
end

z = false

o = case z
  when true
    puts "truthy value"
  when false
    puts "falsey value"
else
  puts "value is not boolean"
end

puts o

10.times do |i|
  p "---"
end

5.times { p "xxx"; p "..."}

i = 0...10

i.each do |n|
  puts n
end

t = 0
loop do 
  puts "A mighty crystal appears"
  t += 1
  break if t == 10
end

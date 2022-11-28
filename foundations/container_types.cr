minerals = ["alunite", "chromium", "vlasovite"]
puts "#{typeof(minerals)}"

minerals_collection = %(alunite, chromium, vlasovite)
puts "#{typeof(minerals_collection)}"

puts minerals.size
minerals << "wagnerite"
minerals << "muscovite"
puts minerals
puts minerals.size

# Error: minerals << 100
# Error: precious_metals = []
# precious_metals = []? returns nil instead of stack tracing
# precious_metals = Array(String).new
puts minerals[0], minerals[3], minerals[-2], minerals[-8]?

arr = [10, 20, 30, 40, 50]
puts arr.includes? 100

p arr.shift
p arr
p arr.pop
p arr

# basic looping
arr.each do |i|
  puts i 
end

# debugging
pp arr
p arr.inspect

# hashes
mohs = {
  "talc" => 1,
  "calcite" => 2,
  "apatite" => 3,
  "corundum" => 9,
}

pp typeof(mohs)

# determine if key exists in a hash
mohs.has_key? "gold"
pp mohs["gold"]?

# create empty hashes as x = {} fails
# mohs = {} of String => Int32
# mohs = Hash(String, Int32).new

p mohs.empty?

p mohs.delete("talc")
p mohs
# Let's manipulate currencies, this will generate an argument error.
# "64.34603985".to_i

"64.34603985".to_f

rate = 64.34603985
str_rate = "7"

puts rate.to_f
puts str_rate.to_f

# Type conversion among integer types
p int8 = 1_i8
p int16 = 16_i16
p int32 = 132_i32
p int64 = 164_i64
p uns64 = 264_u64
p int64 + int32 + uns64
# p int8 + int64 produces an overflow

puts "Empty array of type Int8:"
array = [] of Int8
p array

p populated_array = [75, 42, 126]
puts "Non-performant array of type Int8 >>> #{typeof(populated_array)}"

# Int32 is the default int type but for performance reasons, specify Int8.
performant_array = [75_i8, 42_i8, 126_i8]
puts "How to compose a performant array >>> #{typeof(performant_array)}"

# Suffixes for signed and unsigned integers: i8, i16, i32, i64 & u8, u16, u32, u64

# Troubleshooting errors with integers
puts "Enter a number: "
n = gets
p "Submitted: #{n}"

# Error: no overload matches 'Array(Int8)#<<' with type (String | Nil)
# array << n

# Guard against the input of Nil from the addition to the array above
# if n
#   array << n.to_i8
#   p array
# end

# Get rid of whitespace on "n", specify how to break out of the loop and print out values.
# We're using rescue/end here but since memory is allocated for error handling, it's best
# to use something like to_i? and to_f? -- should you have to use begin-rescue, keep the
# code between it minimal to avoid extra memory usage and complicated logic.
while (n = gets)
  n = n.strip
  if n == "" || n == "terminate"
    break
  end
  begin
  array << n.to_i8
  rescue
    puts "Integer submitted is > 255"
  end
  p array
  p typeof(n)
  p n.class
end

puts "Assignment shortcuts:"
mem = nil
mem ||= 1
p! mem
mem ||= "memory"
p! mem
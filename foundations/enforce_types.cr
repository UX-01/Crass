h : String
e : Char
x : String
# Single line assignment
h,e,x = "H", 'e', "X"
puts h,e,x
puts typeof(h), typeof(e), typeof(x)

# Swap value operation
z = 41
y = 42
y, z = z, y
puts z, y
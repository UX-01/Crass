# Channel for transporting strings
chan = Channel(String).new
num = 10000
num.times do |i|
    spawn do
        chan.send("fiber #{i}: I like crystals!")
    end
puts chan.receive
end
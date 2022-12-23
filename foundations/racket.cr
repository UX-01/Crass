# racket.cr
# Currency conversion

CURRENCIES = {
  :EUR => "Euro",
  :CAD => "Canadian Dollar",
  :CNY => "Chinese Yuan",
  :INR => "Indian Rupee",
  :MXN => "Mexican Peso",
}

puts "Enter a base currency (default is USD) >>>"
base = gets

# Nil checks
exit unless base

if base.strip == ""
  base = "USD"
end

puts "Enter the other currencies and their exchange rate >>>"
puts "eg., EUR - 0.84320536"

rates = Hash(String, Float64).new

while (i = gets)
  # Break out of the loop if there's no user input.
  break unless i
  i = i.strip

  if i == "" || i == "terminate"
    puts "Terminating application"
    break
  end
  # Test the input format
  if !i.includes?(" - ")
    puts "Wrong input format, use CUR - 1.23456"
    break
  end

  # Split the array into first element being the currency and second being the rate.
  array = i.split(" - ")
  currency = array[0].upcase

  if currency.size != 3
    puts "Currency code must be 3 characters"
    break
  end

  # Assign the rate to the currency in the Hash.
  rate = array[1]
  rates[currency] = rate.to_f

  if rate.to_f?
    rates[currency] = rate.to_f
  else
    puts "Invalid rate."
  end
end

puts "base: #{base}"
puts "rates: #{rates}"

# begin
#     raise "error"
# rescue ex : Exception
#   puts ex.message
# else
#   # Execute if no exceptions occur
# ensure
#   puts "The application crashed unexpectedly."
# end
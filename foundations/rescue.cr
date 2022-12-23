# Boilerplate for rescuing errors
begin
  # Dangerous code or your own raise
    raise "error"
rescue ex : Exception
  # Execute this if an exception is raised
  puts ex.message
else
  # Execute if no exceptions occur
ensure
  # This line will always execute.
  puts "Clean up on aisle # ..."
end

# begin
#   raise "error"
# rescue ex : Exception
#   puts ex.message
# end
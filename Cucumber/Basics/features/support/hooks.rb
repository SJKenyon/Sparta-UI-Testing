Before do
  puts "This is your before hook"
end

After do
  puts "This is your after hook"
end

After("@username") do
  puts "This is your after hook for @username"
end

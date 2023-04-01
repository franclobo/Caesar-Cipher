require './caesar_cipher'

print "Enter a string: "
string = gets.chomp
print "Enter a shift value: "
shift = gets.chomp.to_i
crypto = Crypto.new(string, shift)
print "Do you want to encode [1] or decode [2]? "
choice = gets.chomp.downcase
if choice == "1"
  puts "Encoded string: #{crypto.encode}"
elsif choice == "2"
  puts "Decoded string: #{crypto.decode}"
else
  puts "Invalid choice"
end

print "Do you want to exit? [y/n] "
exit = gets.chomp.downcase
if exit == "y"
  exit 0
else
  load 'main.rb'
end

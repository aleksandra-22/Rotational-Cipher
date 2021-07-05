require_relative "cipher.rb"


puts "Enter a text for encryption: "
text = gets.chomp
#puts "Enter a number for encryption: "
#num = gets.chomp.to_i
puts Cipher.new(5).encrypt(text)
puts Cipher.new(13).encrypt(text)
puts Cipher.new(26).encrypt(text)

puts Cipher.new(1000).encrypt(text)

require_relative "cipher.rb"

puts "Enter a text for encryption: "
text = gets.chomp
puts Cipher.new(5).encrypt(text)
puts Cipher.new(13).encrypt(text)
puts Cipher.new(26).encrypt(text)

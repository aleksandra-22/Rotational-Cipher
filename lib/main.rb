require_relative "cipher.rb"


puts "Enter a text for encryption: "
text = gets.chomp
puts "Enter a number for encryption: "
num = gets.chomp.to_i
puts Cipher.new(num).cipher(text)
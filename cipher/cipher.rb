def rot13(char)
    case char
    when 'a'..'m', 'A'..'M'
        char.ord + 13
    when 'n'..'z', 'N'..'Z'
        char.ord - 13
    else
        char.ord
    end.chr
end

def rot_word(string)
    new_string = string.chars.map do |char|
        rot13(char)
    end.join
end

def rot13_message(messages)
    messages.map do |message|
    end
end

puts "Enter a message: "
message = gets.chomp
puts "Encoded message: ", rot_word(message)

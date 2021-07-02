class Cipher

  LOW_ALPHABET = ("a".ord.."z".ord)
  HIGH_ALPHABET = ("A".ord.."Z".ord)
  ALPHABET_LENGTH = 26

  def initialize(key)
    @key = key
  end

  def cipher(string)
    array = []
    string.each_char.map do |character|
      if character =~ /[A-Za-z]/
        array << cipher_character(character)
      else
        array << character
      end
    end
    result = array.join
    result
  end

  def cipher_character(character)
    rot_character = character.ord
    if HIGH_ALPHABET.include?(rot_character)
      rot_character += @key
      rot_character -= ALPHABET_LENGTH if rot_character > "Z".ord
    elsif LOW_ALPHABET.include?(rot_character)
      rot_character += @key
      rot_character -= ALPHABET_LENGTH if rot_character > "z".ord
    end
    rot_character.chr
  end

end

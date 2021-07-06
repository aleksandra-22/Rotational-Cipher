class Cipher
  LOW_ALPHABET = ("a".ord.."z".ord)
  HIGH_ALPHABET = ("A".ord.."Z".ord)
  ALPHABET_LENGTH = 26

  def initialize(key)
    @key = key
    unless (0..ALPHABET_LENGTH).include?(key)
      raise RangeError, "Please enter a number between 0 and #{ALPHABET_LENGTH}."
    end
  end

  def encrypt(raw_message)
    encrypted_message = raw_message.each_char.map do |character|
      if (LOW_ALPHABET).include?(character.ord)
        cipher_character(character)
      else
        (HIGH_ALPHABET).include?(character.ord)
        cipher_character(character)
      end
    end.join
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

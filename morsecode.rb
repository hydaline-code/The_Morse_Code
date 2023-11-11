# frozen_string_literal: true

# MorseDecoder decodes Morse code into plain text.
class MorseDecoder
  MORSE = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
            '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
            '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
            '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
            '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
            '--..' => 'Z' }.freeze

  def decode_char(morse_char)
    MORSE[morse_char]
  end

  def decode_word(morse_word)
    morse_word.split(' ').map { |morse_char| decode_char(morse_char) }.join
  end

  def decode_message(morse_message)
    morse_message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
  end
end

message_from_bottle = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoder = MorseDecoder.new
decoded_message = decoder.decode_message(message_from_bottle)

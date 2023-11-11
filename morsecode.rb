MORSE_CODE_HASH_TABLE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(morse_char)
  MORSE_CODE_HASH_TABLE[morse_char]
end

def decode_word(morse_word)
  word_array = morse_word.split.map { |morse_char| decode_char(morse_char) }
  word_array.join
end

def decode(morse_code)
  the_word = morse_code.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
  puts "#{the_word} "
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

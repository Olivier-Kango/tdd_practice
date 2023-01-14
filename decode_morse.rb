class DecodeMorse
  def decode_char(code)
    morse_code = {
      '.-' => 'A',
      '-...' => 'B',
      '-.-.' => 'C',
      '-..' => 'D',
      '.' => 'E',
      '..-.' => 'F',
      '--..' => 'G',
      '....' => 'H',
      '..' => 'I',
      '.---' => 'J',
      '-.-' => 'K',
      '.-..' => 'L',
      '--' => 'M',
      '-.' => 'N',
      '---' => 'O',
      '.--.' => 'P',
      '--.-' => 'Q',
      '.-.' => 'R',
      '...' => 'S',
      '-' => 'T',
      '..-' => 'U',
      '...-' => 'V',
      '.--' => 'W',
      '-..-' => 'X',
      '-.--' => 'Y',
      '--.' => 'Z'
    }

    morse_code[code]
  end

  def decode_word(word)
    output = ''
    arr_word = word.split
    arr_word.each do |code|
      output += decode_char(code)
    end
    output
  end

  def decode(phrase)
    output = ''
    arr_phrase = phrase.split('   ')
    arr_phrase.each_with_index do |word, index|
      output += index == arr_phrase.size - 1 ? decode_word(word) : "#{decode_word(word)} "
    end
    output
  end
end

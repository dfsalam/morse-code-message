# frozen_string_literal: true

def character(char)
  array_symbols = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..',
                   '.---', '-.-.', '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-',
                   '...-', '.--', '-..-', '-.--', '--..']
  array_letters = %w[A B C D E F G H I J K L M N O P Q R S T
                     U V W X Y Z]
  counter = 0
  array_symbols.each do |n|
    return array_letters[counter] if n == char

    counter += 1
  end
end

def word(string)
  arr = string.split
  result = ''
  arr.each do |letter|
    result += character(letter)
  end
  result
end

def phrase(phrase)
  arr_words = phrase.split('   ', -1)
  result = ''
  arr_words.each do |element|
    result += "#{word(element)} "
  end
  result
end

puts(phrase('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))

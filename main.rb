require 'pry-byebug'

def get_shifted_letter(word, shift)
  letters = word.chars.each do |l|
    loop_over_letters(l, shift)
  end

  get_last_letter(letters)
end

def loop_over_letters(letter, shift)
  shift.times do
    if letter == ' '
      letter
    elsif letter == '!'
      letter
    else
      letter.next!
    end
  end
end

def get_last_letter(letters)
  letters.map! do |l|
    if l.length > 1
      l.reverse.slice!(0)
    else
      l
    end
  end
end

def encrypt(word, shift)
  encrypted_word = get_shifted_letter(word, shift)
  p word
  p encrypted_word.join
end

encrypt('What a string!', 5)

# https://www.codewars.com/kata/word-a10n-abbreviation/train/ruby

class Abbreviator
  def self.abbreviate(string)
    final_output = ""
    temp = ""
    string.each_char do |char|
      if /[a-zA-Z]/.match(char)
        temp += char
      elsif temp.size > 0
        final_output += abbreviate_single_word(temp)
        final_output += char
        temp = ""
      else
        final_output += char
      end
    end
    if temp
      final_output += abbreviate_single_word(temp)
    end
    final_output
  end

  def self.abbreviate_single_word(word)
    if word.size <= 3
      word
    else
      word[0] + "#{word.size-2}" + word[word.size-1]
    end
  end
end

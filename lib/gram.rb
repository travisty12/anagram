class Gram
  attr_reader(:word,:check)

  def initialize(word, check)
    @word = word
    @check = check
  end

  def anagram
    word_stripped = @word.chars.reject{ |r| ".,/\\;:'!@#$%^&*()[]".include?(r)}.join
    check_stripped = @check.chars.reject{ |s| ".,/\\;:'!@#$%^&*()[]".include?(s)}.join
    valid = false
    [word_stripped, check_stripped].each do |word_to_check|
      word_to_check.split(" ").each do |slice|
        ["a","e","i","o","u","y"].each do |vowel|
          if slice.downcase.include?(vowel)
            valid = true
          end
        end
        if !valid1
          return "inputs need vowels!"
        end
      end
      word_to_check = word_to_check.chars.reject{|r| r == " "}.join
    end
    check_dummy = check_stripped.downcase
    hit = false
    miss = false
    word_stripped.downcase.chars.each do |letter|
      if check_dummy.include?(letter)
        check_dummy = check_dummy.sub(letter,"")
        hit = true
      else
        miss = true
      end
    end
    if (hit && miss)
      return "word 1 had extra letters"
    end
    if check_dummy == ""
      "perfect anagram!"
    elsif check_dummy == check_stripped.downcase
      "perfect antigram!"
    else
      "word 2 had extra letters"
    end

  end

  def antigram
    puts "antigram check"
  end

  def self.find(word)

  end

end

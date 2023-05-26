class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) } # Select words that are anagrams of the initialized word
    end
  
    private
  
    def anagram?(other_word)
      sort_word(word) == sort_word(other_word) && word.downcase != other_word.downcase
      # Compare the sorted characters of both words
      # Ensure they are equal and exclude identical words (case-insensitive)
    end
  
    def sort_word(word)
      word.downcase.chars.sort
      # Sort the characters of a word in alphabetical order (case-insensitive)
    end
  end
  
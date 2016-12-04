class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(possible_matches)
        matches = []
        initial_word = @word.chars.to_a
        possible_matches.each do |word|
            character_array = word.chars.to_a
            matches << word if initial_word.sort == character_array.sort
        end
        matches
    end
end

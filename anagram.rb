# frozen_string_literal: true

def str_anagram(word_one, word_two)
  raise 'Missing or empty word' if word_one.empty? || word_two.empty?

  word_one.downcase.reverse.eql? word_two.downcase
end

puts str_anagram('er', 're')
puts str_anagram('uriel', 'leiru')
puts str_anagram('leiru', 'uriel')

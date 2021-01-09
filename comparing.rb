# frozen_string_literal: true

def str_cmp(word_one, word_two)
  raise 'Missing or empty word' if word_one.empty? || word_two.empty?

  word_one.downcase.eql? word_two.downcase
end

puts str_cmp('UkIlll', 'ukiLLL')
puts str_cmp('fddf', 'who')

# frozen_string_literal: true

def hash_key_sorter(hash_to_sort)
  raise 'Is not a Hash' unless hash_to_sort.is_a?(Hash)

  hash_to_sort.keys.sort_by do |key|
    key.to_s.length
  end
end

puts hash_key_sorter({ tomate: '32', max: '34', ferrocarril: 'grande',
                       uriel: 123, eduardo: 1234, 1 => 'minimo' })

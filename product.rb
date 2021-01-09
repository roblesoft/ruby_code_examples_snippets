# frozen_string_literal: true

def product(numbers)
  raise 'Is not an array' unless numbers.is_a?(Array) || numbers.is_a?(Range)

  numbers.to_a.inject(1) do |product, number|
    product * number
  end
end

puts product([1, 2, 3, 4, 5])
puts product(1..5)
puts product([0b101])
puts product([-4, 2.3e12, 77.23, 982, 0b101])

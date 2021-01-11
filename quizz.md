# Ruby code test

## 1. Write a function that returns product of all numbers of an array/range

First the numbers aurgument is converted to an array if it is an range.

I use the inject method passing first the number 1 to initialize the operation
and iterating the array to multiply the acumulative number and the number to multiply

```
def product(numbers)
  raise 'Is not an array' unless numbers.is_a?(Array) || numbers.is_a?(Range)

  numbers.to_a.inject(1) do |product, number|
    product * number
  end
end
```


## 2. Compare if two strings are anagrams (assume input consists of ASCII alphabets only)
I just transform the string to downcase to avoid case differences and reverse the first string and comparing 
to the second string using the eql? method
```
def str_anagram(word_one, word_two)
  raise 'Missing or empty word' if word_one.empty? || word_two.empty?

  word_one.downcase.reverse.eql? word_two.downcase
end
```


## 3. Compare if two strings are same irrespective of case

I transform both string and comparing with eql? method
```
def str_cmp(word_one, word_two)
  raise 'Missing or empty word' if word_one.empty? || word_two.empty?

  word_one.downcase.eql? word_two.downcase
end
```

## 4. Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash:
I get the keys with the keys method of the hash and use the sort_by method and passing a block to transform the keys into
string and use use the length method that is used for the sort_by method.
```
def hash_key_sorter(hash_to_sort)
  raise 'Is not a Hash' unless hash_to_sort.is_a?(Hash)

  hash_to_sort.keys.sort_by do |key|
    key.to_s.length
  end
end
```

## 5. Explain the difference between calling super and super() methods (OOP)

### super
Is used in a method to call the method with the same name of his super, the code of the parent class will executed in the line of super

### super()
Is the same as super  that calls the parent method but doesn't take the arguments who passed in the child class

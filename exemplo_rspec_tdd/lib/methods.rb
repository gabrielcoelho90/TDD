def get_rid_of_surrounding_whitespaces(a_string)
  # TODO: return a copy of the string with leading and trailing whitespaces removed
  # example: get_rid_of_surrounding_whitespaces("  hey yo  ") => "hey yo"
  a_string.strip
end

def belongs_to?(a_string, a_word)
  # TODO: return true if a_string contains a_word
  # example: belongs_to?("hey jude", "jude") => true
  a_string.include? a_word
end

def replace(initial_string, old_letter, new_letter)
  # TODO: return a copy of the string with the new letter replacing the old one
  # example: replace("casanova", "a", "o") => "cosonovo"
  initial_string.gsub!(old_letter, new_letter)
end

puts replace("casanova", "a", "o")

def exactly_divide(an_integer, a_divider)
  # TODO: return division of an_integer by a_divider (computing the floating division, NOT the euclidean one)
  # example: exactly_divide(13, 4) => 3.25
  an_integer.to_f / a_divider
end

puts exactly_divide(13, 4)

def divisible_by_two?(an_integer)
  # TODO: return true if an_integer is divisible by 2
  # example: divisible_by_two?(6) => true
  an_integer.even?
end

puts divisible_by_two?(6)

def random_subset(an_array, sample_size)
  # TODO: return a random subset of an_array with size sample_size
  # example: random_subset(("a".."z").to_a, 4) => ["u", "q", "l", "t"]
  p an_array
  an_array.sample(sample_size)
end

p random_subset(("a".."z").to_a, 4)

def randomize(an_array)
  # TODO: return a randomized copy of an_array
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
  an_array.shuffle
end

p randomize([1, 2, 3, 4])

def ascending_order(an_array)
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
  an_array.sort
end

p ascending_order([7, 3, 1, 6, 9])

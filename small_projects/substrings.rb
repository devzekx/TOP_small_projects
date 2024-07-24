def substrings(word, dictionary)
  lowcase_word = word.downcase

  # so we have to create a hash when we iterate through the dictionary to start counting matches
  # => we do this with the function each_with_object(Hash.new) do ...
  # this way we create a hash, word will be the key, value will be n° of matches

  dictionary.each_with_object(Hash.new(0)) do |dictionary_word, matches|
    if lowcase_word.include?(dictionary_word)
      # if we find a match, add +1 to the value of matches.
      matches[dictionary_word] += 1
    end
  end
end

# we have the words from the dictionary. we can't place it inside the method.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

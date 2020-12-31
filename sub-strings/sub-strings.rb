dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  str_array = string.split
  return dictionary.reduce({}) do |hash, substring|
    occurances = str_array.reduce(0) do |count, word|
      word.downcase.include?(substring) ? count += 1 : count
    end
    if occurances > 0
      hash[substring] = occurances
    end
    hash
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

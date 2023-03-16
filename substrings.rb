def substrings(input_string, dictionary)
  hash = dictionary.reduce(Hash.new(0)) do |hash, substring|
    count = count(substring.downcase, input_string.downcase)
    if count > 0 
      hash[substring.downcase] = count
    end
    hash
  end
end

def count(substring, input_string)
  input_string.scan(/(?=#{substring})/).count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
def substrings(string, dict)
  substring_hash = Hash.new(0)
  string.split(" ").each do |word|
    dict.each do |str|
      if word.downcase.include? str.downcase
        substring_hash[str] += 1
      end
    end
  end
  return substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

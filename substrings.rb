def substrings(string, dictionary)
  string = string.downcase
  result = Hash.new(0)
  dictionary.each do |substring|
    substring = substring.downcase
    count = string.scan(substring).length
    result[substring] = count if count > 0
  end
  result
end

string = "Howdy partner, sit down! How's it going?"
dictionary = ["how", "partner", "sit", "down", "go"]

puts substrings(string, dictionary)
  

  
  
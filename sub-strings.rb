substrings = 
["he", "me", "no", "up", "to", "an", "at", "it", "is", "be", 
"or", "in", "go", "as", "am", "us", "we", "so", "do", "on", 
"my", "by", "if", "the", "and", "but", "can", "not", "all", 
"one", "you", "his", "her", "its", "out", "are", "for", "was", 
"who", "why", "how", "any", "our", "new", "now", "that", "with", 
"from", "have", "this", "they", "will", "your", "know", "what", 
"when", "them", "then", "many", "some", "like", "just", "good", 
"time", "take", "come"]

def get_substrings(string, substrings) 
  result = {}
  substrings.each do |substring|
    contains_substring = string.include?(substring)
    if contains_substring == true
      substring_count = string.scan(substring).length
      result[substring] = substring_count
    else
      next
    end
  end
  result
end

puts get_substrings("combination", substrings)
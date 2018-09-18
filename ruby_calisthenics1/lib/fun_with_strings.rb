module FunWithStrings
  def palindrome?

    characters = self.downcase.scan(/\w/)
    characters == characters.reverse

  end
  
  def count_words
    words = self.downcase.scan(/\b\w+\b/)
    hash = Hash.new
    count = -1
    words.each do |x| 
      count += 1
      next if count%2 == 1 
      if hash.has_key?(x)
        hash[x] += 1   #if key exists, increment value
      else
        hash[x] = 1  #create a new hash with string name and value of 1
      end
    end
    return hash
  end
  
  def anagram_groups
    words = self.downcase.split.group_by { |x| x.chars.sort}.values
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

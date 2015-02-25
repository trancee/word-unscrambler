def getDictionary
  dictionary = Hash.new

  File.open("dictionary.txt", "r") do |f|
    f.each_line do |line|
      alphabet = Hash.new

      line.delete!("\n")
      line.each_char do |i|
        alphabet[i] = (alphabet[i] || 0) + 1
      end

      dictionary[line] = alphabet
    end
  end

  return dictionary
end

def compare(word, dictionary)
  alphabet = Hash.new

  word.each_char do |i|
    alphabet[i] = (alphabet[i] || 0) + 1
  end

  dictionary.each do |key, hash|
    if alphabet == hash
      puts "Answer: " + key
      return true
    end
  end

  return false
end

dictionary = getDictionary
#puts dictionary

word = ARGV[0]
#puts word

if !compare(word, dictionary)
  puts "Sorry, no solution are possible."
end

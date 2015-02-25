class Unscramble
  def initialize()
    @dictionary = Hash.new

    File.open("dictionary.txt", "r") do |f|
      f.each_line do |line|
        alphabet = Hash.new

        line.delete!("\n")
        line.each_char do |i|
          alphabet[i] = (alphabet[i] || 0) + 1
        end

        @dictionary[line] = alphabet
      end
    end
  end

  def compare(word)
    alphabet = Hash.new

    word.each_char do |i|
      alphabet[i] = (alphabet[i] || 0) + 1
    end

    @dictionary.each do |key, hash|
      if alphabet == hash
        return key
      end
    end

    return false
  end
end



word = ARGV[0]

if word
  answer = Unscramble.new().compare(word)

  if answer
    puts "Answer: " + answer
  else
    puts "Sorry, no solution are possible."
  end
end

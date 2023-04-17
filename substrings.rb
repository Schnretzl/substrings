def substrings(input, dictionary)
    #stuff here

    words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    output = Hash.new(0)

    # input = "Howdy partner, sit down! How's it going?"
    input.gsub!(/[^a-z0-9\s]/i, '')
    input.downcase!
    input_split = input.split(" ")
    input_split.each do |word|
        dictionary.each do |dictionary_word|
            if word.include?(dictionary_word.downcase)
                output[dictionary_word] += 1
            end
        end
    end
    return output
end

# Test case 1: Example input
string = "Howdy partner, sit down! How's it going?"
dictionary = ["how", "sit", "going"]
puts substrings(string, dictionary)  # {"how"=>2, "sit"=>1, "going"=>1}

# Test case 2: Empty string and dictionary
string = ""
dictionary = []
puts substrings(string, dictionary)  # {}

# Test case 3: No matches in string
string = "The quick brown fox jumps over the lazy dog"
dictionary = ["cat", "dog", "bird"]
puts substrings(string, dictionary)  # {"dog"=>1}

# Test case 4: Case insensitive matches
string = "The quick brown fox JUMPS over the lazy dog"
dictionary = ["jumps", "DOG"]
puts substrings(string, dictionary)  # {"jumps"=>1, "DOG"=>1}

# Test case 5: Multiple matches of the same substring
string = "The cat in the hat sat on the mat"
dictionary = ["cat", "hat", "mat"]
puts substrings(string, dictionary)  # {"cat"=>1, "hat"=>2, "mat"=>2}

# Test case 6: Substrings that are substrings of other substrings
string = "It's raining cats and dogs"
dictionary = ["cat", "cats", "dog", "dogs"]
puts substrings(string, dictionary)  # {"cat"=>1, "cats"=>1, "dog"=>1, "dogs"=>1}

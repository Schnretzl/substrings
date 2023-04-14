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

p substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
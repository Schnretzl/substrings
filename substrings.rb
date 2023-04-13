def substrings(input, dictionary)
    #stuff here
end

output = {}
input = "Howdy partner, sit down! How's it going?"
input_split = input.split(" ")
# p input_split
words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

x = input_split.reduce(Hash.new(0)) do |result, occurrences|
    if words.include?(occurrences)
        result[occurrences] += 1
    end
    result
end


p x
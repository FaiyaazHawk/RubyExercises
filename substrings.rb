def substrings (string, dictionary)
    result = {}
    lowered_string = string.downcase

    dictionary.each do |word|
        count = lowered_string.scan(word).length #scan checks the string for occurance of word and outputs an array of result
        result[word] = count
    end
    return result
end

#test

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

string = "Howdy partner, sit down! How's it going?"

p substrings(string,dictionary)
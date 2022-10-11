dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def sub_strings(string, dictionary)
    string_array = string.downcase
    words_bag = {}
    cont = 0

        dictionary.each do |word|
    
            if string_array.include?(word)
                    words_bag[word] = cont+=1    
            end
            cont = 0
        end
            

return    words_bag

end

string = "Howdy partner, sit down! How's it going?"

p sub_strings(string, dictionary)
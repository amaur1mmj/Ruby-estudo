dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy sit below go going how"


def sub_strings(string, dictionary)
    string_array = string.downcase.split(" ")
    bag_words = {}
    cont = 0

        dictionary.each do |word|

            for text in string_array 
                    
                    if text == word
                        bag_words[word] = cont+=1
                    
                    elsif text.include?(word)
                            bag_words[word] = cont+=1    
                    end
                    
            end
                cont = 0
        end

return    bag_words

end

teste = "Howdy partner, sit down! How's it going?"

p sub_strings(teste, dictionary)
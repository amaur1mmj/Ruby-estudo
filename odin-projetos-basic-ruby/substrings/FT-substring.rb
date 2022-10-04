dictionary = ["below","down","go","going","go","horn","how","howdy","it","i","low","own","part","partner","sit"]
text = "Howdy sit below go going"

def substrings(string, dictionary)
    p text_array = string.downcase.split(" ")
    bag_words = {}
    cont = 0

    for i in 0...text_array.length do
        
        for j in 0...dictionary.length do 
            
            if text_array[i] == dictionary[j]
                bag_words[text_array[i]] = cont +=1        
            end
            
        end
        cont = 0 
    end
    bag_words

end

p substrings(text, dictionary)
def isograma?(string)

    unique = Array.new 
    string = string.downcase

    for i in 0..string.length
        cont = 0
       # p string[i]
        for j in 0..i
            if unique[j] == string[i] && string[i] != nil 
                cont++
                unless cont == 1
                    return "#{string} não é um isograma! 🤨"
                end  
            elsif unique[j] == nil
                unique.push(string[i])
            end
        end 
    end
     "#{string} é um isograma!!! "

 end

 p isograma?("Amir")
 p isograma?("Amauri")
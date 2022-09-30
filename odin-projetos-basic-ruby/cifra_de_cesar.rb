

def ceasar_cipher(string, number_cipher)
        alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        cipher = []
        string = string.downcase

        for j in 0..string.length    
            alphabet.each_with_index do |caracter, letter_index|        
                
                if caracter == string[j]
                    position = (letter_index + number_cipher) - alphabet.length         
                        cipher.push(alphabet[position])
                end
                
            end
                    
        end
        cipher.join

end

p string_criptograda = ceasar_cipher("abcxyz",3)



def describe_ceasar_cipher(string,number_cipher)

    alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    decoded  = Array.new
    for i in 0..string.length
        alphabet.each_with_index do |caracter,index|
        
            if caracter == string[i]
                position = (index - number_cipher) + alphabet.length         
                    decoded.push(alphabet[position])
                
            end

        end
    end
    return  decoded.join

end

puts string_original = describe_ceasar_cipher(string_criptograda,3)
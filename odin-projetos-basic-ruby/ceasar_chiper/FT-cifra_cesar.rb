def alphabet
    alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
end

def ceasar_cipher(string, shift)
        alphabet = alphabet()
        cipher = []
        string = string.downcase

        for j in 0...string.length    
            alphabet.each_with_index do |caracter, letter_index|        
                
                if caracter == string[j]
                    position = (letter_index + shift) - alphabet.length         
                        cipher.push(alphabet[position])
                end
                
            end
                    
        end
        cipher.join

end




puts "Digite sua mensagem para ser criptografada!!"
my_cipher = "abcxyz" #gets.to_s  
puts "Escolha o número de casas para isso! "
shift = 3 #gets.to_i

p string_criptograda = ceasar_cipher(my_cipher,shift)

puts string_original = describe_ceasar_cipher(string_criptograda,shift)


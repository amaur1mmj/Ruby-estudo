
def cipher_ceaser(text, shift)

    for i in 0...text.length
        char_asc = text[i].ord # pegar o valor ascii inteiro do caracter
        rotate = shift > 0 ? 26 : -26

        if char_asc >= 97 && char_asc <= 122 # verifica de a-z 
                
                char_asc += shift
                char_asc -= rotate unless char_asc < 122 && char_asc > 97 # verifica se ultrapassa o intervalo 
            
        elsif char_asc >= 65 && char_asc <= 90 # verifica de A-Z
            char_asc += shift
            char_asc -= rotate unless char_asc < 90 && char_asc > 97 # verifica se ultrapassa o intervalo
        end
        

        text[i] = char_asc.chr # retorna de inteiro pro valor vizual do caracter       
    end

    text

end

p string = cipher_ceaser("Amauri blablabla kkk !!!!",-3)

p cipher_ceaser(string, 3)

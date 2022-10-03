#nome  = gets 
#nome_semo_barra_n = gets.chomp 

#p nome,nome_semo_barra_n

#print nome + nome_semo_barra_n

text  = "amauri ok"
p text.length
new_text = []

for i in 0...text.length do
    new_text.push(text[i].ord)  
end

p new_text

p "a".ord


char_asc = 98

a = true if char_asc >= 97 || char_asc <= 122 

p a


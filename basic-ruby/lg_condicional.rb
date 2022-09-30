
p "digite um valor maior que 3: "

number = gets.chomp.to_i 

if number > 3 
    puts "é maior que 3 parabens vc n é burro!"
else 
    p "tenho uma pessima noticia pra vc..."
end

#ou 

 resultado =  "Essa merda é maior que 3 " if number > 3

 p resultado

 #ou 
 attack_by_land = false
 attack_by_sea = true

 if attack_by_land == true
    puts "release the goat"
  elsif attack_by_sea == true
    puts "release the shark"
  else
    puts "release Kevin the octopus"
  end

# OPERADOR ESPACIAL, COISA LINDA
# comapra ser e maior, igual ou menor da esquerda pra direita
p 5 <=> 10    #=> -1
p 10 <=> 10   #=> 0
p 10 <=> 5    #=> 1

# &&  => and 
# || => or
# ! => negando algo ex !(10<5) = true 


#----------------- isso aqui é dahora
grade = 'A'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end

p did_i_pass

#! pode ser feita com bloco de informações tirando o then

grade = 'A' 

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

p grade.class


#-------------------------

age = 19
puts "Welcome to a life of debt." unless age < 18

# Só processa o os blocos caso a instrução seja falsa

unless age > 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end

#! Operador ternário 

age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."

p 'carro'.eql?('caro') #compara o valor e o tipo 
# equal? comapara se os calores estão apontando pro mesmo lugar na memoria


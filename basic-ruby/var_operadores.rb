string = "uma string"
numero = 1

p string, numero

# += atribui o valor da variavel mais um adicional 
num = 0
p num+= 1
num += num + 3 

p num   

# mesmo conceito para *=,/=, -=

desired_location = "Porto Nacional"
amauri_location = desired_location

p desired_location, amauri_location

desired_location.upcase!
# Usando o ! ao final de upcase, podemos ver que todas as variaveis que apontavam
# ao mesmo lugar mudaram de acordo com a principal.

# Receber valores de entrada usando o método gets, porém usar o chomp logo a frente 
# evita a vinda do \n(enter dado pelo usuário) de junto ao valor
p desired_location, amauri_location

#nome_usuario = gets.chomp

p nome_usuario

#Escopo

total = 0

[1,2,3].each{|number| total+= number }
puts total 


total = 0

[1,2,3].each do |number| 
    total+= number 
end
 p total 



 a = 5             # variable is initialized in the outer scope

 3.times do |n|    # method invocation with a block
   a = 3           # is a accessible here, in an inner scope?
 end
 
 puts a

 # GERANDO VARIAVEL CONSTANTE(IMUTAVEL)
 LOUCURA_DO_AMOR =  "dormi na praça"

 p LOUCURA_DO_AMOR 













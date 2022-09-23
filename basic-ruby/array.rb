new_array  = ["olha só",1,3, "que legal"]

p new_array

#Array.new() me permite criar uma array vazia, com tamanho especifico e com valores padroes 


nova_array = Array.new(3,true)

p nova_array


str_array = ["This", "is", "a", "small", "array"]

p str_array[0]            #=> "This"
p str_array[1]            #=> "is"
p str_array[4]            #=> "array"
p str_array[-1]           #=> "array"
p str_array[-2]           #=> "small"

# funções last() e first() retornam os valores em uma nova array inicias ou finais de uma array 

firstt =  str_array.first(2)

lastt =  str_array.last(2)

p firstt, lastt


# push() ou << add valores ao final da array 
#push() pode ser usado para mais de um valor 

num_array =[1,2]
num_array.push(3,4)
num_array << 5

p num_array

# pop() é um método de remorção

num_array.pop
p num_array

# unshift() add elemento no inicio da array e o shift() remove o primeiro e o retorna

pri_array = num_array.shift
num_array.unshift(1)

p pri_array, num_array

# vale ressaltar que pop e shift podem receber valores inteiros 

[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"




a = [1,2,3,4,5]

b = a.map {|num| num**2} # .collect faz o mesma coisa

p b


a.delete_at(1) # outra forma de deletar por indice 
# ja somente o delete() é quando vc sabe sobre o valor
p a


a.unshift(2)

p a

# metidi .uniq faz com q todos os valores repetidos se tornem unicos
# caso use .uniq!, ele modificara a array raiz e n só retornara


# Função .select, ela intera sobre uma array podendo voltar um condição verdadeiro

numbers =[1,2,3,4,5,6,7,8,9]

p "oloko tendi nada #{numbers}"

p numbers.select{|number| number > 4 }

# cuidado com o metodos que utilizam o !, pois eles tendem a ser destrutivos e podem modificar de maneira permanente 

array_test = Array.new

p array_test[1]


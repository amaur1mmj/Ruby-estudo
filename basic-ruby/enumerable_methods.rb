friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

p invited_list

#  isso acima pode se tornar, usanod os Metodos Enumerados 

p friends.select{|friend| friend!= 'Brian'}
# ou
p friends.reject{|friend| friend == 'Brian'}


# metodo each

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

# para melhor pratica, use o "do...end" para definir o bloco de trabalho 

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#interando hashes

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }



#=> { "one" => 1, "two" => 2}
array = []

my_hash.each do |pair| 
  array.push(pair) 

  puts "the pair is #{pair}" 

end

p array

# usando each com indice 

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
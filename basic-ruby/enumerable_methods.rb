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

# usando select em hash 

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }

responses.select { |person, response| response == 'yes'}

#=> {"Sharon"=>"yes", "Arun"=>"yes"}


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

# metodo map 

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

p my_order.map { |item| item.gsub('medium', 'extra large') }

p my_order


# metodo reduce 

my_numbers = [5, 6, 7, 8]

p my_numbers.reduce { |sum, number| sum + number }
#=> 26

# passando o numero direto a ele

my_numbers = [5, 6, 7, 8]

p my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026

# exemplo de de reduce com hashes deveras complicado 

=begin 

Basicamente o redux deixa como o valor padrao, usando a proria função dada pela
Hash.new(), depois isso ela identa de maneira que possa atribuir valores a essas
chaves que em momentos antes de começar o loop nao existiam verdadeiramente no hash e 
por isso levavam um valor padrão dado.

Ao final ele passa por todos os valos do hash e modifica de acordo com a repetição
das chaves

=end

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  p result
end



# hash é algo semelhante ou objeto em js e dicionario em python!

my_hash = {
    "a random word" => "ahoy",
    "Dorothy's math test score" => 94,
    "an array" => [1, 2, 3],
    "an empty hash within a hash" => {}
}


  # o metodo new tbm funciona aqui ...
hash = Hash.new
# quando é colocado um valor no Hash.new(12) < exemplo, 
# ele deixa esse valor padrao para acessar todas as chaves que não existem no hash 

hundreds = Hash.new(100)
p hundreds["first"]         #=> 100
p hundreds["mine"]          #=> 100
p hundreds["yours"] 

p hundreds

hundreds = Hash.new(100)
p hundreds["new"]           #=> 100
p hundreds["new"] = 99
p hundreds["new"]



hash = {1=> "boa", :oshi => 77}

p my_hash["a random word"], hash[:oshi]

#p hash.fetch(3) # retorna um erro caso n encontra uma chave 
# pode ser retornado um valor padarao para n ter o erro 

p  hash.fetch(1,"Quase em!")
 
# add ou removendo 

shoes = {
    "summer" => "sandals",
    "winter" => "boots"
  }

shoes["fall"] = "sneakers"

p shoes

shoes["summer"] = "flip-flops"

p shoes

shoes.delete("summer")
p shoes

# a maioria dos métodos que funcionam nas arrays acabam funionando nos hashes

# .keys e .values são métodos especificos 

p shoes.keys, shoes.values

# mesclagem de hashes 

hash1 = {"a" => 100, "b" => 200}
hash2 = {"c" => 300 , "d"=> 400 }

hash_unido = hash1.merge(hash2)
p hash1, hash2, hash_unido


# de maneira melhor, a boa pratica adotada é usando simbolos :exemplo como chave 

# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
}

# 'Symbols' syntax
japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
}

p japanese_cars[:honda], american_cars[:chevrolet]


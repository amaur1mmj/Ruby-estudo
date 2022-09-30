=begin
Basicamente as arrays conseguem armazenar valores dentro delas mesmas, isso também
inclui outras arrays. 
o fato array dentro de array se chama arrays aninhados    
=end
    
test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  
  teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]

  p test_scores[0][1]
  p teacher_mailboxes[0][0]

  p teacher_mailboxes[-1][-2]

# caso for acessar um indice ele retorna nil, caso contrario ele da NoMethodError
teacher_mailboxes[2][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil

# para contorna o erro , podemos usar o metodo .dig()
teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil

# criando matriz mutavel (meio meme isso aqui)

mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
p mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

# criando arrays imutabeis (elite)

immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
p immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]


test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]


teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end



# Isso corre pq a verificação está em toda a array dentro da outra  e não em um valor especifico

#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


p test_scores.all? do |scores|
  scores.any? { |score| score > 80 }
end
#=> true


# aninhamento com hashes 

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"

# vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil

# adionando valores 

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
vehicles

vehicles[:dave][:color] = "red"
#=> "red"
vehicles

vehicles.delete(:blake)
#=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
vehicles

vehicles[:dave].delete(:color)
#=> "red"
vehicles

# usando select para hashes aninhados
p vehicles.select { |name, data| data[:year] >= 2020 }

# usando o collect podemos ver apenas os nomes dos proprietarios 
p vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :caleb, :dave]

# porem, para retirar o nil quando entra no false do if, usamos o compact
# basicamente ele retira os espaços vazios de hashes e arrays e retorna apenas dados 
p vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
#=> [:caleb, :dave]

# existe o metodo ainda melhor pra essa situação, ele simplesmente junta o compact e o collect

p vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]

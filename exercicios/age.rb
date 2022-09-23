puts "Qual é seu nome e quantos anos tem?"

name = gets.chomp
age = gets.chomp.to_i
age_future = []
teen_age = age
4.times do |n|
    teen_age += 10
    age_future[n] = teen_age 
    
end

puts "#{name}, sua idade atual é #{age} e você terá as seguintes idades nos proximos 40 anos #{age_future}"


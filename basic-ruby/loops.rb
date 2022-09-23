# começando deveras interessante aqui 

# -- loop do:  é um tipo de ciclo que não para até que haja uma break 

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# classico while 

i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

while gets.chomp != "yes" do 
    p "Oia só rapa!!!"
end

# oposto do while, ou seja, enquanto a entrada for negativa 

i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end
# mostra de maneira clara o algoritmo em questão 

until gets.chomp == "yes" do
    puts "Will you go to prom with me?"
end

n = 10

for i in 0..n
    puts ("legal neh #{i}")
end

# outra maneira quando se tem o valor exato de loops 

5.times do |number|
    puts "Alternative fact number #{number}"
end

# são exatamentes usados para percorrer em crescente ou decrescente 

5.upto(10) {|num| puts "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }




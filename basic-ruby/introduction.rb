=begin 

Existem dois tipos de valors númericos em RB, FLoat e Inteiro

-Existe a vonersão de numeros: 
puts 13.to_f
puts 13.0.to_i

Métodos de par e impar 

6.even?
7.even?

6.odd?
7.odd?

concatenacao = "Nossa que "+ "bacana em!"
concatenacao2 = "uaaaaauu"<<" '-' "

puts concatenacao
puts concatenacao2

\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
=end

ok = "hello"

# maneira de acessar valores em Strings 

puts ok[0], ok[0..2],ok[0,4],ok[-2]

# interpolaão básica, vale ressaltar que só funciona com ""
puts "boa #{name}"

name = "PAulim"
hi ="hello"
hilongo ="fala meu mano"
hicomespaco = "ola caralho   "



# funções legais de manipulação de strins 
p hi.capitalize 

p hi.include?('lo') #.include(n) -- false

p hi.upcase # downcase

p hi.empty? # "".empty? --true

p hi.length 

p hi.reverse

p hilongo.split 
p hilongo.split("")

p hicomespaco.strip

p "he77o".sub("7", "l")           #=> "hel7o"

p "he77o".gsub("7", "l")          #=> "hello"

p "hello".insert(-1, " dude")     #=> "hello dude"

p "hello world".delete("l")       #=> "heo word"

p "!".prepend("hello, ", "world") #=> "hello, world!"

5.to_s        #=> "5"

nil.to_s      #=> ""

:symbol.to_s  #=> "symbol"

# Diferente de strings, símbolos tem seu armazenamento predifinido e unico na memoria
# tornando o mais rápido em alguns momentos e mais utilizados em chaves e hashes

p "string" == "string"  #=> true

p "string".object_id == "string".object_id  #=> false

p :symbol.object_id == :symbol.object_id    #=> true


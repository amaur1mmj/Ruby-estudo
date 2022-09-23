5.times {p"ok"}

def greet(name = "Safado!")
    "Ola amigo, #{name}"
end

puts greet "carlin"

# os methods em ruby conseguem retorna valores sem a necessidade da palavra reservada, com tanto que 
# a saida seja unica extensão no bloco.

def even_odd(number)
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
# quando existe a palavra chave, é marcada a saída 

def my_name
    return "Joe Smith"
    "Jane Doe"
end

puts my_name
  puts even_odd(16) #=>  That is an even number.
  puts even_odd(17) #=>  That is an odd number.


def even_odd(number)
    unless number.is_a? Numeric
      return "A number was not entered."
    end
  
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
end
  
  puts even_odd(20) #=>  That is an even number.
  puts even_odd("Ruby")

  # metodos que tem ? ao final de seus nomes, (even?). Tem como caracteristicas retornarem o boolean.
  
  # por outro lado, quando vc utiliza o !, acaba dizendo que esse metodo podera modificar o objeto onde foi aplicado.

whisper = "hello everybody"
puts whisper.upcase! #=> "hello everybody"
puts whisper #=> "hello everybody"
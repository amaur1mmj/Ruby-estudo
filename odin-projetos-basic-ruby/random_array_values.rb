array_integer = [1,2,3,4,5,6]
array_string = ["OK","blz","tbm","vlw","já"]
#array_ramdom = Array.new


def ramdom_number(basic_array)

    for i in 0...basic_array.length
            ramdom = rand(0...basic_array.length) 
            temp = 0 
            if i != ramdom # pode ser usado com unless, porem tirando o elsif e com isso perdendo o poder de ramdomizar a posição quando os calores são iguais
                temp = basic_array[i]
                basic_array[i] = basic_array[ramdom]
                basic_array[ramdom] = temp      
            elsif i != 0
                i -= 1
            end
# algoritmo de ramdomização, fiz alguns testes mas não se ele ira quebrar com algua condição 
    end
    basic_array
end

for i in 0...50
    p ramdom_number(array_integer)
    #p ramdom_number(array_string)
end

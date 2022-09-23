def empty_array?(array)
    # return true if the array is empty
   return array.empty? ? true  : false #"Array contem valores #{array}"
end

array = Array.new()

p empty_array?(array)

array.push(1,2,3,4)

p empty_array?(array)

def reverse(array)
    # return the reverse of the array
    unless empty_array?(array)
        return "Normal: #{array}  Reverse: #{array.reverse}, Tamanho da array #{array.length}"
    else return "Array vazia!"
    end
end

p reverse(array)

def include?(array, value)
    return array.include?(value) ? true : "Valor não existe!"
    # return true if the array includes the value
end

p include?(array, '')

def join(array, separator)

    unless empty_array?(array)
        return array.join(separator)
    else false
    end

end

p join(array,"-")
def first_element(position,array)
    # return the first element of the array
    if position >= 0 || position <= array.length-1
     return p array[position - 1] #  return array.first  
        p "Essa posição na array n existe"
    end
end

array = [99,2,3,4,5]
p array.last(3)

#first_element(2,array)


def last_three_elements(last_position,array)
    # return the last 3 elements of the array
    last_position = last_position*(-1)
    while last_position <= -1   
        p array[last_position]
        last_position += 1
    end
end
  
last_three_elements(3,array)



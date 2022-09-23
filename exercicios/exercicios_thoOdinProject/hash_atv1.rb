def create_favorite_hash(color, number)
    # return a hash with the following key/value pairs:
    # key of color (as a symbol) with value of the color argument
    # key of number (as a symbol) with the value of the number argument
    return { 
        color: color,
        number: number,
    }
  end

fv_hash = create_favorite_hash("azul", 7)

#fv_hash= create_favorite_hash("vermelho", 9)

def favorite_color(favorite_list)
  # return the value of the color key
    return favorite_list[:color]
end

p favorite_color(fv_hash)

new_hash = {
  1 => "um",
  2 => "dois",
  3 => "treis",
  4 => "quatro" 
}

def favorite_number(favorite_list,key)
  # use #fetch to return the value of the number key or 42 if the key is not found
  return favorite_list.fetch(key,42)
end

p favorite_number(new_hash,3)
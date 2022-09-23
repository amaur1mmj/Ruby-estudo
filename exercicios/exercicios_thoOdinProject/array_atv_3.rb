def remove_last_element(array)
    # Step 1: remove the last element from the array
    remove_value = array.delete_at(-1)
  
    # Step 2: return the array (because Step 1 returns the value of the element removed)
    return  p remove_value,array
  end

array = [1,2,3,'opa','aqui!']

remove_last_element(array)

def array_concatenation(original, additional)
    # return an array adding the original and additional array together
    unless original == additional
        return original + additional
    else return "As arrays em questão são iguais #{original} e #{additional}"
    end
end

additional = ["isso","é","novo"]

p array_concatenation(array,array)
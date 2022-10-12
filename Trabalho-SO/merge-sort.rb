
vetor = [1,3,88,75,32,45,768,2,3,5]

def merge_sort(vetor)

    if vetor.length > 1

        mid = vetor.length / 2 

         low_elements = vetor[...mid]

         high_elements = vetor[mid...]
        
        merge_sort(low_elements)
        merge_sort(high_elements)
       

        i = j = k = 0

        while i < low_elements.length && j < high_elements.length
            
            if low_elements[i] <= high_elements[j]

                vetor[k] = low_elements[i]
                i += 1
            else
                vetor[k]= high_elements[j]
                j += 1
            end

            k += 1
        
        end 

        while i < low_elements.length 

            vetor[k] = low_elements[i]
            i += 1
            k += 1
        end

        while j < high_elements.length 
            
            vetor[k] = high_elements[j]
            j += 1
            k += 1

        end


    end

    vetor

end

p merge_sort(vetor)
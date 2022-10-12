def pivot_choice(vetor, first,last)

    pivot = vetor[last]
    
    i = first -1

    for j in first...last

        unless vetor[j] >= pivot
            i+=1
            vetor[i],vetor[j] = vetor[j], vetor[i]
        
        end
    end
    
    vetor[i+1], vetor[last] = vetor[last], vetor[i+1]
    
    i+1

end


def quick_sort(vetor,first, last)

    if first < last
        pi = pivot_choice(vetor,first, last)

        quick_sort(vetor, first, pi -1)

        quick_sort(vetor, pi+1, last)
        
    end
    vetor

end

vetor = [1,23,54,1,3,6,4,7]

p quick_sort(vetor,0, vetor.length-1)
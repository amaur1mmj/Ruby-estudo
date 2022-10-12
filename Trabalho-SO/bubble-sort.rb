# 

def bubble_sort(vetor)

    length = vetor.length
    
    for i in 0...length-1
        
        for j in 0...length-i-1
        
            unless vetor[j] < vetor[j+1]
            
               vetor[j], vetor[j+1] = vetor[j+1], vetor[j]
            end
        end
    
    end

    vetor

end


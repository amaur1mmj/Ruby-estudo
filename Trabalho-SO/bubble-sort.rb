require_relative  'file-read-write'

def bubble_sort(vetor)
    inicio = Time.now
    length = vetor.length
    
    for i in 0...length-1
        
        for j in 0...length-i-1
        
            unless vetor[j] < vetor[j+1]
            
               vetor[j], vetor[j+1] = vetor[j+1], vetor[j]
            end
        end
    
    end
    fim = Time.now

    return vetor,fim - inicio
end

vetor = file_read("cem-mil.txt")

p vetor

vetor2 = bubble_sort(vetor)

file_write("cem-mil.txt",vetor2)

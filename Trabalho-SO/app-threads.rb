require_relative 'bubble-sort.rb'
require_relative 'merge-sort.rb'
require_relative 'quick-sort.rb'
require_relative 'file-read-write.rb'

files_read_desordenados  = ["cem.txt","mil.txt","cem-mil","um-milhao.txt"]
path_write_ordenados = "Trabalho-SO/db-ordenado/vetor-ordenado-cem-bublle-sort.txt"
path_write_ordenados = "Trabalho-SO/db-ordenado/vetor-ordenado-cem-merge-sort.txt"
path_write_ordenados = "Trabalho-SO/db-ordenado/vetor-ordenado-cem-quick-sort.txt"
string = "cem.txt"





def BS_thread (path_write)

   vetor_desordenado = file_read()

   vetor_ordenado = bubble_sort(vetor_desordenado)

   file_write(path_write,vetor_ordenado)


end

 BS_thread(path_write_ordenados)

def MS_thread(path_write)

    vetor_desordenado = file_read()

    vetor_ordenado = merge_sort(vetor_desordenado)
 
    file_write(path_write,vetor_ordenado)

end

MS_thread(path_write_ordenados)

def QK_thread(path_write)

    vetor_desordenado = file_read()

    vetor_ordenado = quick_sort(vetor_desordenado,0,vetor_desordenado.length-1)
 
    file_write(path_write,vetor_ordenado)

end

QK_thread(path_write_ordenados)
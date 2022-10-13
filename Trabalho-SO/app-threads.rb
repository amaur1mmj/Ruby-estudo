require_relative 'bubble-sort.rb'
require_relative 'merge-sort.rb'
require_relative 'quick-sort.rb'
require_relative 'file-read-write.rb'

# vetor com o nome dos arquivos contidos no data-base desordenado 
files_desordenados  = ["cem.txt","mil.txt","cem-mil.txt"]  #,"cem-mil.txt","um-milhao.txt"

#caminho das pastas para receber posteriormente a indentação do nome do arquivo e armazenar o vetor ordenado no devido lugar
path_write_bubble = "bubble-ordenacao/"
path_write_merge = "merge-ordenacao/"
path_write_quick = "quick-ordenacao/"




# Função responsavel pela leitura e passagem do valor retornado para função de organização e sua escrita.
# Todas as três funções tem o mesmo esqueleto.

def BS_thread (files,path_write)
   #vetor_desordenado = file_read()

   files.each do |file|
        
        vetor_desordenado =  file_read(file)
   
        vetor_ordenado, time = bubble_sort(vetor_desordenado)

        file_write(path_write+file,vetor_ordenado)

        p "Bubble executando, tempo de conclusão: #{time} segundos" 
    
    end

  
   
  

end


def MS_thread(files,path_write)


    files.each do |file|
        
        vetor_desordenado =  file_read(file)
   
        vetor_ordenado, time = merge_sort(vetor_desordenado)

        file_write(path_write+file,vetor_ordenado)
        
        p "Merge executando, tempo de conclusão: #{time} segundos"
    
    end

    p "thread 2 ..."

end

#MS_thread(path_write_ordenados)

def QK_thread(files,path_write)

    files.each do |file|
        
        vetor_desordenado =  file_read(file)
   
        vetor_ordenado, time = quick_sort(vetor_desordenado,0, vetor_desordenado.length-1)

        file_write(path_write+file,vetor_ordenado)
   
        p "Quick executando, tempo de conclusão: #{time} segundos"
    end


    p "thread 3 ..."

end

#QK_thread(path_write_ordenados)


# CRIANDO AS THREADS 

bubble = Thread.new{BS_thread(files_desordenados,path_write_bubble)}
   
merge = Thread.new{MS_thread(files_desordenados,path_write_merge)}

quick = Thread.new{QK_thread(files_desordenados,path_write_quick)}

# EXECUTANDO

bubble.join
   
merge.join

quick.join


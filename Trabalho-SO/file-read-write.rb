#files_read_desordenados  = ["cem.txt","mil.txt","cem-mil","um-milhao.txt"]
#file_write_ordenados = "Trabalho-SO/db-ordenado/vetor-ordenado.txt"

def file_read(file)

    begin    
        file_numbers  = File.read("Trabalho-SO/db-desordenado/#{file}").split

        vetor_desordenado = []

        file_numbers.each do |num|
            vetor_desordenado << num.to_i
        end
    
    rescue Errno::ENOENT
    
        p "File não encontrado!"
    rescue ArgumentError
    
        p "Falha na leitura!"
    end

  vetor_desordenado
   
end

def file_write(file_string, vetor_ordenado)
    
    begin
      File.open("Trabalho-SO/db-ordenado/#{file_string}","w"){|f| f.print (vetor_ordenado)}
    rescue
        puts "Erro ao escrever o arquivo!"
    end

    p "Arquivo escrito com Sucesso!"
end



#fim = Time.now

#teste = file_read()
#p teste
#vetor_ordenado = bubble_sort(teste)

#file_write(file_result,vetor_ordenado)

#File.open("Trabalho-SO/db-ordenado/vetor-ordenado.txt","w"){|f| f.print (vetor_ordenado)}
        

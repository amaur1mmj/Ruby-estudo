# Leitura dos aruivos retornando o vetor desorganizado 
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

# Escrita do arquivo, recebendo o nome do aruiqvo q será gerado e o vetor organizado
def file_write(file_string, vetor_ordenado)
    
    begin
      File.open("Trabalho-SO/db-ordenado/#{file_string}","w"){|f| f.print (vetor_ordenado)}
    rescue
        puts "Erro ao escrever o arquivo!"
    end

    p "Arquivo escrito com Sucesso!"
end

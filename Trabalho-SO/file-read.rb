require_relative 'bubble-sort.rb'

inicio = Time.now
file_numbers  = File.read("Trabalho-SO/db-desordenado/cem.txt").split

vetor_desordenado = []


file_numbers.each do |num|
    vetor_desordenado << num.to_i
end

fim = Time.now
bubble_sort(vetor_desordenado)


# Trabalho 1 de Sistemas Operacionais 
## Threads Usando Ruby e Algoritmos de Organização


Esse trabalho foi feito para demonstrar de maneira prática como funcionam
as threads. 

Foi escolhido a lingaguem de programação Ruby por questões pessoais, pois ando estudando ela ultimamente e
vi como um desafio que me ajudaria em ambos os objetivos. 

Os algoritmos foram refeitos em ruby, pois já havia utilizados os mesmo na matéria de Projeto Análise de Algoritmos,
logo achei uma boa ideia aplica-los em Ruby e usar como demostração para as threads.




## Funções presentes
 
- *app-threads.rb* : main onde executa todo o conjunto
- *file-read-write.rb* : É a função responsável pela *leitura* e *escrita* dos arquivos.
- *bubble-sort.rb* : Ordena de maneira simples o vetor 
- *merge-sort.rb* : Usa divisão e conquista para organizar o vetor
- *quick-sort.rb* : Também usa divisão e conquista porém separa eles por um pivo.



## Um pouco sobre os Algoritmos de Organização usados 

### Bubble Sort

é o algoritmo de ordenação mais simples que funciona trocando repetidamente os elementos adjacentes se eles estiverem na ordem errada. Esse algoritmo não é adequado para grandes conjuntos de dados, pois sua complexidade de tempo média e de pior caso é bastante alta.

### Merge Sort

O algoritmo Merge Sort é um algoritmo de ordenação baseado no paradigma Dividir e Conquistar . Neste algoritmo, a matriz é inicialmente dividida em duas metades iguais e, em seguida, elas são combinadas de forma ordenada.

### Quick Sort

Assim como o Merge Sort , o QuickSort é um algoritmo de divisão e conquista . Ele escolhe um elemento como um pivô e particiona o array dado ao redor do pivô escolhido. Existem muitas versões diferentes do quickSort que escolhem o pivô de maneiras diferentes. 


## Para Rodar o projeto é preciso: 


- Instalar Ruby ou ter instalado na máquina

- no terminal : ruby *path*/app-threads.rb
    
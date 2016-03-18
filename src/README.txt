Contém códigos Matlab que usam números pseudo-aleatórios para aproximar a solução do problema do caixeiro-viajante.

traveling.m implementa o método "simulated annealing" enquanto que traveling2.m não usa, isto é, 
aceita uma solução apenas no caso do custo desta ser inferior ao custo da anterior.

Estas duas funções, 
traveling.m 
traveling2.m

São usadas na função PARtraveling(n,p) que simula p processos paralelos, cada um deles partindo duma solução aleatória inicial. 
A função PARtraveling(n,p) produz a distância percorrida em cada caso e também uma visulização gráfica.




---------- traveling2 ------------
traveling2.m usa a funcao rand do Matlab (que gera numeros pseudo-aleatorios com distribuicao uniforme entre 0 e 1) 
Para obter uma rota inicial e inicia um processo de busca alterando localmente cada rota e aceitando a nova rota se o comprimento desta fˆor inferior ao da rota anterior. 
Este processo de optimizacao e levado a cabo sobre uma matriz (simetrica) de distancias entre as diferentes “cidades”;


---------- traveling ------------
traveling e uma modificacao do codigo anterior que implementa o metodo de “simulated annealing”.
Tal como explicado na aula, para resolver o mesmo problema;



---------- PARtraveling ------------
PARtraveling e o programa principal que gera aleatoriamente a posicao das cidades (isto e, abcissa e ordenada de n pontos num quadrado de lado 10), 
calcula as distancias (matriz D) e invoca traveling e traveling2 para resolver o mesmo problema; 
A funcao tem dois parametros de entrada: o numero n de cidades e o numero p de vezes que se repete a experiencia (processos potencialmente paralelos por serem completamente independentes).







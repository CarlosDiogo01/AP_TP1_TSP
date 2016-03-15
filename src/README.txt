Contém códigos Matlab que usam números pseudo-aleatórios para aproximar a solução do problema do caixeiro-viajante.

traveling.m implementa o método "simulated annealing" enquanto que traveling2.m não usa, isto é, 
aceita uma solução apenas no caso do custo desta ser inferior ao custo da anterior.

Estas duas funções, 
traveling.m 
traveling2.m

São usadas na função PARtraveling(n,p) que simula p processos paralelos, cada um deles partindo duma solução aleatória inicial. 
A função PARtraveling(n,p) produz a distância percorrida em cada caso e também uma visulização gráfica.

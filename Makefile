.SILENT: 
mutex03: mutex03.cpp
	g++ mutex03.cpp -o mutex03 -lm -fopenmp 

.SILENT:
run:
	clear
	make mutex03
	./mutex03
	rm mutex03

#------------------------------- /usr/bin/g++-7 -------------------------------#
#------------------------------- coding: utf-8 --------------------------------#
# Criado por: Jean Marcelo Mira Junior
# Versão: 1.2
# Criado em: 23/11/2020
# Sistema operacional: Linux - Ubuntu 20.04.1 LTS
# Objetivo: estabelecer um padrão de Makefile para a disciplina de S.O.
#------------------------------------------------------------------------------#

# Compilador
CC = g++ -std=c++17

# Flags de compilação
FLAGS = -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wnoexcept -Woverloaded-virtual -Wredundant-decls -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Wno-unused -Wsign-promo
# -g

# Variáveis do tipo executável
O = *.o 

# Variáveis ou flag de Thread
#THREAD = -lpthread

# Variáveis ou flag modulo gráfico 
GRAPHIC = -lsfml-graphics -lsfml-window -lsfml-system

# Nome do executável
EXE = simulador

# Comando para limpar arquivo
RM = rm -rf 

# Comando para pegar todos os .cpp da pasta do Makefile
APPNAME = $(wildcard *.cpp)

# Compila e executa o programa e depois apaga todos os arquivos .o e o
# Executável criado
all: run clean

# Limpa o terminal de verdade
limpa:
	tput reset

# Compila e executa o programa
run:
	$(CC) $(FLAGS) -c $(APPNAME)
	$(CC) $(FLAGS) -o $(EXE) $(O) $(GRAPHIC) $(THREAD)
#gdb 
#./$(EXE)

# Interface gráfica
sfml:
# https://www.sfml-dev.org/tutorials/2.5/start-linux.php
# https://github.com/andrew-r-king/sfml-vscode-boilerplate
	sudo apt-get install build-essential
	sudo apt-get install libsfml-dev

# Apaga todos os arquivos .o é o executável criado
clean:
	$(RM) $(O)
# $(RM) $(EXE)

.PHONY: all clean
#------------------------------------------------------------------------------#
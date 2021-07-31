#!/bin/bash

#habilita un teclado mas accesible con teclas de movimiento, home, end, etc
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout

#habilita teclas como las F1, F2, F12 (quita el # en la linea que se presenta a continuacion en caso de que desees agregarlos)
	#mkdir $HOME/.termux/ ;echo "extra-keys = [['F1','F2','F3','F4','F5','F6','F12'],['ESC','TAB','CTRL','ALT','-','DOWN','UP']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout

#Correcion ortografica, en caso de escribir mal un comando, este sh lo corregira automaticamente
echo 'shopt -s cdspell' >> .bashrc

#Personaliza tu prompt (deberas cambiar donde dice "Erick@nsl" por el que tu quieras)
echo 'PS1="[\033[1;30m][\@] [\033[1;37m]Erick@nsl:\w $ [\033[0;37m]"' >> .bashrc

#Deshabilita el banner o mensaje de inicio
touch ~/.hushlogin

#Agregar un banner personalizado
pkg i figlet pv
echo 'figlet "Hi, dont forget NSL" | pv -qL 500' >> .bashrc
# se puede cambiar con "~/.bashrc"

#creditos "https://esgeeks.com/guia-termux-instalacion-comandos/"

echo "Recuerda que puedes editar este script....
	Felicidades!!!"


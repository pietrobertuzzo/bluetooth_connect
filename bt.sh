#!/bin/bash

# Criado por: Pietro Pereira Bertuzzo

# Se o arquivo não existe, criar com zero (flag de conexão)
# Nota: arquivo para registro de estado criado em diretorio temporario p/ sumir quando reset
if [ ! -f "/tmp/edifierbtstatus.dat" ] ; then
	value=0
# Se existe, ler o arquivo para obter a flag
else
	value=$(cat "/tmp/edifierbtstatus.dat")
fi
# testar se o dispositivo está conectado (valor da variável value)
if [ "$value" -eq "0" ] ; then
	bluetoothctl connect 5C:C6:E9:81:1B:B2 		# Tenta conectar ao mac add do fone
	atvalue=1					# Atualiza flag
fi
# testar se o dispositivo está desconectado (valor da variável value)
if [ "$value" -eq "1" ] ; then
	bluetoothctl disconnect 5C:C6:E9:81:1B:B2	# Tenta desconectar do mac add do fone
	atvalue=0					# Atualiza flag
fi
# Atualiza valor da flag para o estado atual no arquivo temporario
echo "$atvalue" >/tmp/edifierbtstatus.dat

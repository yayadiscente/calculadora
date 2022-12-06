#!/bin/bash

echo "Escolha uma numero:"
echo "1 - Adicionar "
echo "2 - Dividir "
echo "3 - Multiplicar"
echo "4 - Potencia "
echo "5 - Raiz quadrada "
echo "6 - Subtrair "

read equacao
echo "digite um numero"
  read num1
echo "digite outro numero"
  read num2

function somar(){
resultado=$(($num1+$num2))
echo $resultado
}

function dividir(){
resultado=$(($num1/$num2))
echo $resultado
}

function multiplicar(){
resultado=$(($num1*$num2))
echo $resultado
}

function potencia(){
resultado=$(($num1**$num2))
echo $resultado
}

function raiz(){
resultado=$((sqrt$num1))
echo $resultado
}

function subitrair(){
resultado=$(($num1-$num2))
echo $resultado
}

if [ $equacao -eq 1 ]; then
  #resultado=$[num1+num2]
  resultado=$( somar num1 num2 )
elif [ $equacao -eq 2 ]; then
  resultado=$( dividir num1 num2 )
elif [ $equacao -eq 3 ]; then
  resultado=$( multiplicar num1 num2 )
elif [ $equacao -eq 4 ]; then
  resultado=$( potencia num1 num2 )
elif [ $equacao -eq 5 ]; then
  resultado=$( echo "sqrt($num1)" | bc )
elif [ $equacao -eq 6 ]; then
  resultado=$( subitrair num1 num2 )

else
  echo "Opção inválida."
fi
echo "O resultado é: $resultado"

	


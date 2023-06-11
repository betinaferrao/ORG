.data
Vetor: .word 1, 2, 3

.text
la $a0, Vetor
li $a1, 3

move $t0, $zero # t0 = 0

loop:
sll $t1, $t0, 2 # t1*4
add $t2, $a0, $t1 # Somando a primeira posição do vetor com t1 para ir para o próximo indice
sw $zero, 0($t2) # Coloca zero no valor apontado por t2
addi $t0, $t0, 1 # Adiciona 1 no t0
slt $t3, $t0, $a1 # Se t0 for menor que a1, ele recebe o bool 1 e continua o loop
bne $t3, $zero, loop # Se t3 for diferente de zero continua o loop

#Este código está zerando um vetor. 


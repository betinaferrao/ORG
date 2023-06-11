.data
Conta: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.text
la $s4, Conta    #endereco_base
li $t0, 1        #contador
move $s1, $s4    #enredeco_base

loop:
li $a1, 100      #gerar numeros aleatorios
li $v0, 42  
syscall
sw $a0, 0($s1)

addi $s1, $s1, 4   # referencia prox endereco da memoria
addi $t0, $t0, 1   # contador + 1
ble $t0, 10, loop

lw $s2, 12($s4)
lw $s3, 28($s4)

add $s5, $s2, $s3
div $s5, $s5, 2

move $s0, $s5

.data
Vetor:	.word 0, 0, 3, 0, 5, 0, 0, 0 

.text
la	$s4, Vetor # endereço base
add	$s5, $s4, 8
lw	$s1, 0($s5)
addi	$s2, $s1, 1
sll	$s2, $s2, 2
add	$t1, $s4, $s2
lw	$t0, 0($t1)
sw	$t0, 0($s4)

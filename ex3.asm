#Valor = 4*(a+b+c+d)
.data
a:	.word 1
b:	.word 1
c:	.word 1
d:	.word 1
valor:	.word 0

.text
lw	$s0, a
lw	$s1, b
lw	$s2, c
lw	$s3, d
li	$s4, 4

add	$s5, $s0, $s1
add	$s6, $s2, $s3
add	$s6, $s6, $s5

sll	$s6, $s6, 2

sw	$s6, valor

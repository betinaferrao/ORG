
.data
a:	.word 0
b:	.word 0
c:	.word 0
s: 	.word 0

.text
lw	$s0, a
lw	$s1, b
lw	$s2, c

and	$s3, $s0, $s1
nor	$s4, $s0, $zero
and	$s4, $s4, $s2
or	$s5, $s3, $s4

sw	$s5, s



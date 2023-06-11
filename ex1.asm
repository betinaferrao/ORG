.data
x:	.word 0
y:	.word 0
z:	.word 0

.text
lw 	$s0, x
lw 	$s1, y
lw 	$s2, z
addi	$s3, $s0, 300
sub	$s3, $s3, $s1
add	$s3, $s3, $s2
addi	$s3, $s3, 27
add	$s3, $s3, $s0
sw	$s3, x



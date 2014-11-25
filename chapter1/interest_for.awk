# interest - compute compound interest
# 	input: amount	rate years
#	output: compounded value at the end of each year

{	i = 1
	for (i = 1; i <= $3; i++) {
		printf("\t%.2f\n", $1 * (1 + $2) ^ i)
	}
}

# simple arithmetics on variables can be done using the arithmetic expression: $((expression))

A=10
plus=$(($A + 100))
echo "10 + 100 should be 110 : result is $plus"

minus=$((100 - $A))
echo "100 - 10 should be 90 : result is $minus"

multiply=$((100 * $A))
echo "100 * 10 should be 1000 : result is $multiply"

divide=$((100 / $A))
echo "100 / 10 should be 10 : result is $divide"

mod=$((100 % $A))
echo "100 % 10 should be 0 : result is $mod"

exponent=$((2 ** $A))
echo "2 ** 10 should be 1024 : result is $exponent"
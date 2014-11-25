#!/usr/bin/env bash

awk '$3 > 0 { print $1, $2 * $3 }' emp.data

echo ""
awk '$3 == 0 { print $1 }' emp.data

echo ""
awk '{ print }' emp.data

echo ""
awk '{ print $0 }' emp.data

echo ""
awk '{ print $1, $3 }' emp.data

echo ""
awk '{ print NF, $1, $NF }' emp.data

echo ""
awk '{ print NR, $0 }' emp.data

echo ""
awk '{ print "total pay for", $1, "is", $2 * $3 }' emp.data

echo ""
awk '{ printf("total pay for %s is $%.2f\n", $1, $2 * $3) }' emp.data

echo ""
awk '{ printf("%-8s $%6.2f\n", $1, $2 * $3) }' emp.data

echo ""
awk '{ printf("%6.2f %s\n", $2 * $3, $0) }' emp.data | sort

echo ""
awk ' $2 >= 5 ' emp.data

echo ""
awk ' $2 * $3 > 50 { printf("%.2f for %s\n", $2 * $3, $1) }' emp.data

echo ""
awk ' $1 == "Susie" ' emp.data

echo ""
awk ' /Susie/ ' emp.data

echo ""
awk ' $2 >= 4 || $3 >= 20 ' emp.data

echo ""
awk '
NF != 3	  { print $0, "number of fields is not equal to 3" }
$2 < 3.35 { print $0, "rate is below minimum wage" }
$2 > 10   { print $0, "rate exceeds $10 per hour" }
$3 < 0	  { print $0, "negative hours worked" }
$3 > 60   { print $0, "too many hours worked" }
' emp.data

echo ""
awk '
BEGIN { print "NAME	RATE	HOURS"; print ""}
      { print }
' emp.data      

echo ""
awk '
$3 > 15 { emp = emp + 1 }
END	{ print emp, "employees worked more than 15 hours" }
' emp.data


echo ""
awk ' END { print NR, "employees" } ' emp.data

echo ""
awk '
	{ pay  = pay + $2 * $3 }
END	{ print NR, "employees"
	  print "total pay is", pay
	  print "average pay is", pay/NR
  	}
' emp.data

echo ""
awk '
$2 > maxrate { maxrate = $2; maxemp = $1 }
END	     { print "highest hourly rate:", maxrate, "for", maxemp }
' emp.data

echo ""
awk '
	{ names = names $1 " " }
END	{ print names }	
' emp.data

echo ""
awk '
	{ last = $0 }
END	{ print last }	
' emp.data

echo ""
awk ' { print $1, length($1) } ' emp.data

echo ""
awk '
	{ nc = nc + length($0) + 1
	  nw = nw + NF
  	}
END	{ print NR, "lines,", nw, "words,", nc, "characters" }
' emp.data

echo ""
awk '
$2 > 6 { n = n + 1; pay = pay + $2 * $3 }
END    { if (n > 0)
		print n, "employees, total pay is", pay,
			 "average pay is", pay / n
	 else
		 print "no employees are paid more than %6/hour"
       }
' emp.data


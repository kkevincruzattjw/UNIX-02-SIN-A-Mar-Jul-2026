grep "35.237.4.214" log.txt
grep "35.237.4.214\|13.66.139.0" log.txt
grep -e "35.237.4.214" -e "13.66.139.0" log.txt
ps | grep TTY #find the exact word in capital letters
ps | grep -i tty #it doesn't know if it is upper or lower case
grep -v "35.237.4.214" log.txt #shows all lines in the file that DO NOT contain that IP
grep -o "35.237.4.214" log.txt #it shows only the exact text of the IP each time it appears, ignoring the rest of the line.
awk '{print $1}' log.txt #extracts and displays only the first column
awk '{print $1,$2,$3}' log.txt
awk '{print $1,$NF}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt
awk '{print $NF}' log.txt


touch example_csv.txt

head log.txt
awk -F',' '{print $1}' example_csv.txt
awk -F',' '{print $2}' example_csv.txt
awk -F',' '{print $3}' example_csv.txt
echo "hola1,chao1" >> example_csv.txt
echo "hola2,chao2" >> example_csv.txt
echo "hola3,chao3" >> example_csv.txt

awk 'NR < 10' log.txt
grep "42.236.10.117" log.txt | awk '{print $7}'
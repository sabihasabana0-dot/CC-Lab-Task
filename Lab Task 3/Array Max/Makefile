input = input.txt
output = output.txt

main:
	flex cal1.l
	gcc lex.yy.c
	./a.exe < $(input) > $(output)

# main2:
# 	bison -d cal2.y
# 	flex cal2.l
# 	gcc cal2.tab.c lex.yy.c
# 	a < $(input) > $(output) #./a < $(input) > $(output)

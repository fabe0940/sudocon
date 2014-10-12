CC = unicon
OBJ = sudocon.u io.u solve.u
APPLICATION_NAME = sudocon

.PHONY : all rebuild clean

all : $(APPLICATION_NAME)

rebuild :
	make clean
	make all

$(APPLICATION_NAME) : $(OBJ)
	$(CC) $(OBJ) -o  $(APPLICATION_NAME)

sudocon.u : sudocon.icn
	$(CC) -c sudocon.icn

io.u : io.icn
	$(CC) -c io.icn

solve.u : solve.icn
	$(CC) -c solve.icn

clean :
	rm -f $(APPLICATION_NAME) $(OBJ)

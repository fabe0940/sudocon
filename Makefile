CC = unicon
APPLICATION_NAME = hw2
FILES = sudocon.icn

.PHONY : all rebuild clean

all : $(APPLICATION_NAME)

rebuild :
	make clean
	make all

$(APPLICATION_NAME) : $(FILES)
	$(CC) $(FILES) -o $(APPLICATION_NAME)

clean :
	rm -f $(APPLICATION_NAME) $(OBJ)

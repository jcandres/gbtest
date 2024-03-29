Incpath1 = ../gbdk/include

CC	= ../gbdk/bin/lcc -Wa-l -Wl-m -Wl-j

BINS	= \main.gb \


all:	$(BINS)

make.bat: Makefile
	echo "REM Automatically generated from Makefile" > make.bat
	make -sn | sed y/\\//\\\\/ | grep -v make >> make.bat | VBA main.gb

%.o:	%.c
	$(CC) -c -o $@ $<

%.s:	%.c
	$(CC) -S -o $@ $<

%.o:	%.s
	$(CC) -c -o $@ $<

%.gb:	%.o
	$(CC) -o $@ $<

clean:
	rm -f *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm

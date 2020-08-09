
FIRFilter: FIRFilter.c
	gcc -msoft-float -S -o FIRFilter.s FIRFilter.c
	gcc -msoft-float -o FIRFilter FIRFilter.c

FIRFilter_fixedpointp: FIRFilter_fixedpointp.c
	gcc -msoft-float -S -o FIRFilter_fixedpointp.s FIRFilter_fixedpointp.c
	gcc -msoft-float -o FIRFilter_fixedpointp FIRFilter_fixedpointp.c

run: FIRFilter_fixedpointp
	./FIRFilter_fixedpointp

all: FIRFilter_fixedpointp FIRFilter

clean:
	rm FIRFilter_fixedpointp



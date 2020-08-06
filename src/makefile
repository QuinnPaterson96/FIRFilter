
FIRFilter: FIRFilter.c
	gcc -msoft-float -S -o FIRFilter.s FIRFilter.c
	gcc -msoft-float -o FIRFilter FIRFilter.c

FIRFilter_fixedpoint: FIRFilter_fixedpoint.c
	gcc -msoft-float -S -o FIRFilter_fixedpoint.s FIRFilter_fixedpoint.c
	gcc -msoft-float -o FIRFilter_fixedpoint FIRFilter_fixedpoint.c

run: FIRFilter_fixedpoint
	./FIRFilter_fixedpoint

all: FIRFilter_fixedpoint FIRFilter

clean:
	rm FIRFilter
	rm FIRFilter_fixedpoint




FIRFilter: FIRFilter.c
	gcc -msoft-float -S -o FIRFilter.s FIRFilter.c
	gcc -msoft-float -o FIRFilter FIRFilter.c

FIRFilter_fixedpoint: FIRFilter_fixedpoint.c
	gcc -msoft-float -S -o FIRFilter_fixedpoint.s FIRFilter_fixedpoint.c
	gcc -msoft-float -o FIRFilter_fixedpoint FIRFilter_fixedpoint.c

FIRFilter_loopOptimize: FIRFilter_loopOptimize.c
	gcc -msoft-float -S -o FIRFilter_loopOptimize.s FIRFilter_loopOptimize.c
	gcc -msoft-float -o FIRFilter_loopOptimize FIRFilter_loopOptimize.c

run: FIRFilter_loopOptimize
	./FIRFilter_loopOptimize

all: FIRFilter_fixedpoint FIRFilter FIRFilter_loopOptimize

clean:
	rm FIRFilter
	rm FIRFilter_fixedpoint
	rm FIRFilter_loopOptimize



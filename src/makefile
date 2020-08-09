
FIRFilter: FIRFilter.c
	gcc -msoft-float -S -o FIRFilter.s FIRFilter.c
	gcc -msoft-float -o FIRFilter FIRFilter.c

FIRFilter_fixedpoint: FIRFilter_fixedpoint.c
	gcc -msoft-float -S -o FIRFilter_fixedpoint.s FIRFilter_fixedpoint.c
	gcc -msoft-float -o FIRFilter_fixedpoint FIRFilter_fixedpoint.c

FIRFilter_loopOptimize: FIRFilter_loopOptimize.c
	gcc -msoft-float -S -o FIRFilter_loopOptimize.s FIRFilter_loopOptimize.c
	gcc -msoft-float -o FIRFilter_loopOptimize FIRFilter_loopOptimize.c

FIRFilter_macroFunction: FIRFilter_macroFunction.c
	gcc -msoft-float -fverbose-asm -masm=intel -S -o FIRFilter_macroFunction.s FIRFilter_macroFunction.c
	gcc -msoft-float -o FIRFilter_macroFunction FIRFilter_macroFunction.c

run: FIRFilter_macroFunction
	./FIRFilter_macroFunction

all: FIRFilter_fixedpoint FIRFilter FIRFilter_loopOptimize FIRFilter_macroOptimize

clean:
	rm FIRFilter
	rm FIRFilter_fixedpoint
	rm FIRFilter_loopOptimize



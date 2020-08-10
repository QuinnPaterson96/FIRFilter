
FIRFilter: FIRFilter.c
	gcc -msoft-float -S -o FIRFilter.s FIRFilter.c
	gcc -msoft-float -o FIRFilter FIRFilter.c

FIRFilter_loopOptimize: FIRFilter_loopOptimize.c
	gcc -msoft-float -S -o FIRFilter_loopOptimize.s FIRFilter_loopOptimize.c
	gcc -msoft-float -o FIRFilter_loopOptimize FIRFilter_loopOptimize.c

FIRFilter_macroFunction: FIRFilter_macroFunction.c
	gcc -msoft-float -fverbose-asm -masm=intel -S -o FIRFilter_macroFunction.s FIRFilter_macroFunction.c
	arm-linux-gnueabi-gcc -fverbose-asm -static -S -o FIRFilter_macroFunction_arm.s FIRFilter_macroFunction.c
	gcc -msoft-float -o FIRFilter_macroFunction FIRFilter_macroFunction.c

FIRFilter_pipeline: FIRFilter_pipeline.c
	gcc -msoft-float -S -o FIRFilter_pipeline.s FIRFilter_pipeline.c
	gcc -msoft-float -o FIRFilter_pipeline FIRFilter_pipeline.c

FIRFilter_customHW_arm.s: FIRFilter_customHW.c
	arm-linux-gnueabi-gcc -fverbose-asm -static -S -o FIRFilter_customHW_arm.s FIRFilter_customHW.c

run: FIRFilter_macroFunction
	./FIRFilter_macroFunction

all: FIRFilter_fixedpoint FIRFilter FIRFilter_loopOptimize FIRFilter_macroFunction FIRFilter_pipeline FIRFilter_customHW_arm.s

clean:
	rm FIRFilter
	rm FIRFilter_fixedpoint
	rm FIRFilter_loopOptimize
	rm FIRFilter_pipeline
	rm FIRFilter_macroFunction
	rm FIRFilter_customHW_arm.s



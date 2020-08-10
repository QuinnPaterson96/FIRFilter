#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>

/* DEFINES */
#define COUNTOF(x)  (sizeof(x)/sizeof(x[0U]))

/* Private Variables */
static int16_t coeffs_int16[] =
{
    -21, -17, -20, -21, -19, -13, -2, 12, 28,
    44, 58, 67, 67, 59, 40, 11, -23, -60, -94,
    -119, -129, -121, -93, -45, 17, 87, 154, 209, 240,
    239, 203, 131, 30, -89, -211, -316, -388, -411, -375,
    -278, -128, 59, 260, 446, 587, 657, 638, 522, 315,
    39, -273, -579, -832, -989, -1016, -895, -630, -244, 219,
    698, 1123, 1426, 1550, 1458, 1141, 623, -42, -770, -1460,
    -2008, -2318, -2318, -1975, -1302, -359, 744, 1865, 2842, 3516,
    3749, 3452, 2599, 1238, -505, -2434, -4300, -5825, -6731, -6775,
    -5780, -3659, -433, 3762, 8683, 13997, 19312, 24212, 28300, 31234,
    32767, 32767, 31234, 28300, 24212, 19312, 13997, 8683, 3762, -433,
    -3659, -5780, -6775, -6731, -5825, -4300, -2434, -505, 1238, 2599,
    3452, 3749, 3516, 2842, 1865, 744, -359, -1302, -1975, -2318,
    -2318, -2008, -1460, -770, -42, 623, 1141, 1458, 1550, 1426,
    1123, 698, 219, -244, -630, -895, -1016, -989, -832, -579,
    -273, 39, 315, 522, 638, 657, 587, 446, 260, 59,
    -128, -278, -375, -411, -388, -316, -211, -89, 30, 131,
    203, 239, 240, 209, 154, 87, 17, -45, -93, -121,
    -129, -119, -94, -60, -23, 11, 40, 59, 67, 67,
    58, 44, 28, 12, -2, -13, -19, -21, -20, -17,
    -21,
};

static int16_t input1_int16[] =
{
    32767, 28836, 18317, 4567, -8192, -16384, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16383, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16384, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16384, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16384, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16384, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16384, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16384, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16383, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16384, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16383, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767, 28836, 18317, 4567, -8192, -16383, -18317, -14693, -8192,
    -2327, 0, -2327, -8192, -14693, -18317, -16383, -8192, 4567, 18317,
    28836, 32767,
};

/* Private Functions */
// the FIR filter function using fixed-point
#define firFixed(coeffs, filterLength, input, inputLength, output, outputLength)\
{\
    /* NULL checks not needed this since is a macro now */\
\
    /* Run multiply and accumulate for each index in filter output */\
    register const uint32_t nEnd = outputLength > (filterLength + inputLength - 1) ? (filterLength + inputLength - 1) : outputLength;\
    for (register uint32_t n = 0U; n < nEnd; n++)\
    {\
        register int32_t acc = 0;\
\
        /* Convolution */\
\
        /* Ensure the array bounds aren't exceeded */\
        /* Data outside the bounds of the input is considered zero. Therefore, we can just skip it */\
        register const uint32_t kStart = n > inputLength ? n - inputLength : 0U;\
        register const uint32_t kEnd = filterLength > (n+1) ? n : filterLength-1;\
        register int32_t mult =input[n - kStart] * coeffs[kStart];\
        for (register uint32_t k = kStart; k < kEnd; k++ )\
        {\
            acc += mult >> 8U;\
            mult = input[n - k-1] * coeffs[k+1];\
        }\
        acc += mult >> 8U;\
        output[n] = acc;\
    }\
}

// number of samples to read per loop, should be set to maximize cache hits



int main( void )
{
    int32_t fixedOutput[COUNTOF(coeffs_int16) + COUNTOF(input1_int16) - 1];
    memset(fixedOutput, 0, sizeof(fixedOutput));

    clock_t start = clock();

    for(int k =0; k < 10000; k++)
    {
        // Run the FIR filter
        firFixed(coeffs_int16, COUNTOF(coeffs_int16), input1_int16, COUNTOF(input1_int16), fixedOutput, COUNTOF(fixedOutput));
    }

    clock_t end = clock();

    // print out samples
    for(uint32_t i = 0U; i < COUNTOF(fixedOutput) ; ++i)
    {
        if((i % 10 == 0) && (i != 0))
        {
        	printf("\n");
        }

        printf("%15d,", fixedOutput[i]);
    }

    double Num_Of_Clocks = end - start;
    printf("\n");
    printf("Number of Clocks: %2.3f\n", Num_Of_Clocks);

    // printf("All Done");

    return 0;
}

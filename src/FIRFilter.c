#include <stdio.h>
#include <stdint.h>
#include <string.h>


// maximum number of inputs that can be handled
// in one function call
#define MAX_INPUT_LEN   80
// maximum length of filter than can be handled
#define MAX_FLT_LEN     80
// buffer to hold all of the input samples
#define BUFFER_LEN      (MAX_FLT_LEN - 1 + MAX_INPUT_LEN)
#define SAMPLES   80


// Determines how many bits we shift
#define SHIFT_AMOUNT 15



// array to hold input samples
double insamp[ BUFFER_LEN ];
// the FIR filter function
void firFloat( double *coeffs, double *input, double *output,
       int length, int filterLength )
{
    double acc;     // accumulator for MACs
    double *coeffp; // pointer to coefficients
    double *inputp; // pointer to input samples
    int n;
    int k;



    // put the new samples at the high end of the buffer
    memcpy( &insamp[filterLength - 1], input,
            length * sizeof(double) );

    // apply the filter to each input sample
    for ( n = 0; n < length; n++ ) {
        // calculate output n
        coeffp = coeffs;
        inputp = &insamp[filterLength - 1 + n];
        acc = 0;
        for ( k = 0; k < filterLength; k++ ) {
            acc += (*coeffp++) * (*inputp--);
        }
        output[n] = acc;
    }
    // shift input samples back in time for next time
    memmove( &insamp[0], &insamp[length],
            (filterLength - 1) * sizeof(double) );
}



#define FILTER_LEN  80


double coeffs[] =
{
    -9.65559177526501e-05, -0.000117649282356965, -0.000162670559134986, -0.000191769801187762, -0.000189188883080960, -0.000141032384125111, -3.96899005422778e-05, 0.000111931566948361, 0.000297533543666382, 0.000487049167648532,
    0.000639572489160596, 0.000709786347889742, 0.000657266225489007, 0.000457181315299032, 0.000110217055744134, -0.000350791392062556, -0.000859840654199853, -0.00132391284249235, -0.00163656590932425, -0.00169760219953983,
    -0.00143581002379882, -0.000830470803836789, 7.32768063398356e-05, 0.00115976193190408, 0.00225192174613139, 0.00313502867834056, 0.00359283468226228, 0.00345096473397311, 0.00261996451105368, 0.00112915396017091,
    -0.000857193383604016, -0.00304766092239462, -0.00505801594733017, -0.00646969612878401, -0.00690494686007341, -0.00610667200226574, -0.00400833101717004, -0.000778947883912654, 0.00316913644467369, 0.00721687300412163,
    0.0106192952336466, 0.0126221435836632, 0.0125983579043601, 0.0101828761039703, 0.00538185083127927, -0.00136590620506561, -0.00919163661843158, -0.0168706349846346, -0.0229633057140200, -0.0260074053708880,
    -0.0247356866996653, -0.0182868220182812, -0.00637605158620754, 0.0106039686201306, 0.0315725204597687, 0.0548478227720943, 0.0783243132239267, 0.0997185708389086, 0.116850861375748, 0.127922774096765,
    0.131750959282170, 0.127922774096765, 0.116850861375748, 0.0997185708389086, 0.0783243132239267, 0.0548478227720943, 0.0315725204597687, 0.0106039686201306, -0.00637605158620754, -0.0182868220182812,
    -0.0247356866996653, -0.0260074053708880, -0.0229633057140200, -0.0168706349846346, -0.00919163661843158, -0.00136590620506561, 0.00538185083127927, 0.0101828761039703, 0.0125983579043601, 0.0126221435836632,
    0.0106192952336466, 0.00721687300412163, 0.00316913644467369, -0.000778947883912654, -0.00400833101717004, -0.00610667200226574, -0.00690494686007341, -0.00646969612878401, -0.00505801594733017, -0.00304766092239462,
    -0.000857193383604016, 0.00112915396017091, 0.00261996451105368, 0.00345096473397311, 0.00359283468226228, 0.00313502867834056, 0.00225192174613139, 0.00115976193190408, 7.32768063398356e-05, -0.000830470803836789,
    -0.00143581002379882, -0.00169760219953983, -0.00163656590932425, -0.00132391284249235, -0.000859840654199853, -0.000350791392062556, 0.000110217055744134, 0.000457181315299032, 0.000657266225489007, 0.000709786347889742,
    0.000639572489160596, 0.000487049167648532, 0.000297533543666382, 0.000111931566948361, -3.96899005422778e-05, -0.000141032384125111, -0.000189188883080960, -0.000191769801187762, -0.000162670559134986, -0.000117649282356965,
    -9.65559177526501e-05,

};

double input[SAMPLES] = {
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};

void intToFloat( int16_t *input, double *output, int length )
{

    int i;
    for ( i = 0; i < length; i++ ) {
        output[i] = (double)input[i]/(double)32768;
    }
}

void floatToInt( double *input, int16_t *output, int length )
{
    int i;
    for ( i = 0; i < length; i++ ) {
        output[i] = input[i]*32768;

    }
}


// number of samples to read per loop, should be set to maximize cache hits


int main( void )
{
    int size = SAMPLES;

    int16_t output[SAMPLES];
    double floatInput[SAMPLES];
    memset(floatInput, 0, sizeof(floatInput));
    double floatOutput[SAMPLES];
    memset(floatOutput, 0, sizeof(floatOutput));


    for(int k = 0; k< SAMPLES; k++){
        // convert to ints
        // perform the filtering
        firFloat( coeffs, input, floatOutput, size,
               FILTER_LEN );


        // print out samples
        for(int i=0;i<SAMPLES;++i) {
           printf("%.6f \n", floatOutput[i]);
         }

    }



    printf("All Done");
    return 0;
}



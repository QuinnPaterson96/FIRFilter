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
double coeffs[ FILTER_LEN ] =
{
		0.013436424411240122,0.08474337369372327,0.0763774618976614,0.02550690257394217,
		0.04954350870919409,0.04494910647887381,0.06515929727227629,0.07887233511355132,
		0.009385958677423489,0.002834747652200631,0.08357651039198696,0.04327670679050534,
		0.0762280082457942,0.00021060533511106926,0.04453871940548014,0.07215400323407825,
		0.022876222127045265,0.09452706955539222,0.09014274576114836,0.0030589983033553537,
		0.00254458609934608,0.05414124727934966,0.09391491627785106,0.03812042376882124,
		0.02165993971306134,0.042211657558271734,0.0029040787574867943,0.022169166627303505,
		0.0437887593650572,0.04958122413818507,0.02330844502575726,0.02308665415409843,
		0.02187810373376886,0.04596034657377336,0.02897816145904856,0.0021489705265908877,
		0.08375779756625729,0.05564543226524334,0.06422943629324455,0.01859062658947177,
		0.09925434121760651,0.08599465287952898,0.012088995980580641,0.03326951853601291,
		0.07214844075832684,0.07111917696952796,0.09364405867994596,0.04221069999614152,
		0.0830035693274327,0.0670305566414071,0.03033685109329176,0.05875806061435594,
		0.08824790008318577,0.08461974184283128,0.05052838205796004,0.05890022579825517,
		0.0034525830151341586,0.024273997354306763,0.07974042475543028,0.041431399930077425,
		0.017300740157905094,0.0548798761388153,0.07030407620656315,0.06744858305023273,
		0.03747030205016403,0.04389616300445631,0.050842648824998185,0.07784426150001458,
		0.05209384176131452,0.039325509496422606,0.04896935204622582,0.0029574963966907063,
		0.004348729035652743,0.0703382088603836,0.0983187717309674,0.05931837303800576,
		0.0393599686377914,0.01703491968556813,0.050223855843348306,0.09820766375385342
};

double input[SAMPLES] = {
		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};

void intToFloat( int16_t *input, double *output, int length )
{

    int i;
    for ( i = 0; i < length; i++ ) {
        output[i] = (double)input[i];
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

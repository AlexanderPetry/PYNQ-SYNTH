#include <hls_math.h>

#define N 4  // number of input voices

float softclip(float x, float drive) {
    return tanhf(drive * x);
}
extern "C" void mixer(float voice_in0, float voice_in1, float voice_in2, float voice_in3,
                      float drive, float* mix_out)
{
    #pragma HLS INTERFACE s_axilite port=voice_in0
    #pragma HLS INTERFACE s_axilite port=voice_in1
    #pragma HLS INTERFACE s_axilite port=voice_in2
    #pragma HLS INTERFACE s_axilite port=voice_in3
    #pragma HLS INTERFACE s_axilite port=mix_out
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS INTERFACE s_axilite port=drive

    float sum = voice_in0 + voice_in1 + voice_in2 + voice_in3;
    *mix_out = softclip(sum, drive);
}
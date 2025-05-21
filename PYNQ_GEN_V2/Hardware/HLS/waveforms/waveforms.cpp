#include <math.h>
#include <stdint.h>


// Simple pseudo-random generator (Linear Congruential Generator)
unsigned int noise_state = 123456789; // seed

float rand_float() {
    noise_state = noise_state * 1103515245 + 12345;
    return ((noise_state >> 16) & 0x7FFF) / 16384.0f - 1.0f; // range [-1, +1]
}

void waverforms(float freq, float amplitude, int wave_type, int sample_rate,
              float phase_in, float* sample_out, float* phase_out)
{
    #pragma HLS INTERFACE s_axilite port=freq
    #pragma HLS INTERFACE s_axilite port=amplitude
    #pragma HLS INTERFACE s_axilite port=wave_type
    #pragma HLS INTERFACE s_axilite port=sample_rate
    #pragma HLS INTERFACE s_axilite port=phase_in
    #pragma HLS INTERFACE s_axilite port=sample_out
    #pragma HLS INTERFACE s_axilite port=phase_out
    #pragma HLS INTERFACE s_axilite port=return

    float phase = phase_in;
    float sample = 0.0f;

    switch (wave_type) {
        case 0: sample = sinf(phase); break;                       // SINE
        case 1: sample = (sinf(phase) >= 0) ? 1.0f : -1.0f; break; // SQUARE
        case 2: sample = 2.0f * (phase / (2 * M_PI)) - 1.0f; break;// SAW
        case 3: sample = asinf(sinf(phase)); break;               // TRIANGLE
        case 4: sample = rand_float(); break;                     // NOISE
        default: sample = 0.0f;
    }

    // Only update phase for periodic waveforms
    if (wave_type < 4) {
        phase += 2.0f * M_PI * freq / sample_rate;
        if (phase >= 2.0f * M_PI) phase -= 2.0f * M_PI;
    }

    *sample_out = sample * amplitude;
    *phase_out = phase;
}

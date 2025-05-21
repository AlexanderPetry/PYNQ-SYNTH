#include <ap_int.h>

const int N = 4;

enum FilterType {
    LOW_PASS = 0,
    HIGH_PASS = 1,
    BAND_PASS = 2
};

float buffer[N] = {0};
int index = 0;

// Coefficients for each filter type (simple example)
const float coeffs_lp[N] = {0.25, 0.25, 0.25, 0.25};           // Moving average (low pass)
const float coeffs_hp[N] = {0.5, -0.5, 0.5, -0.5};             // Simple high pass
const float coeffs_bp[N] = {0, 0.5, 0.5, 0};                   // Simple band pass

void filter(float sample_in, float* sample_out, ap_uint<2> filter_type) {
    #pragma HLS INTERFACE s_axilite port=sample_in
    #pragma HLS INTERFACE s_axilite port=sample_out
    #pragma HLS INTERFACE s_axilite port=filter_type
    #pragma HLS INTERFACE s_axilite port=return
    #pragma HLS BIND_STORAGE variable=buffer type=ram_1p impl=bram



    // Shift buffer
    for (int i = N - 1; i > 0; i--) {
        buffer[i] = buffer[i - 1];
    }
    buffer[0] = sample_in;

    const float* coeffs;
    if (filter_type == LOW_PASS) {
        coeffs = coeffs_lp;
    } else if (filter_type == HIGH_PASS) {
        coeffs = coeffs_hp;
    } else { // BAND_PASS
        coeffs = coeffs_bp;
    }

    float acc = 0;
    for (int i = 0; i < N; i++) {
        acc += buffer[i] * coeffs[i];
    }

    *sample_out = acc;

    index = (index + 1) % N;
}

void echo_effect(float sample_in, float* sample_out, float delay_ms, float feedback_gain, int sample_rate,
                 volatile float* buffer, int* index) {
    #pragma HLS INTERFACE s_axilite port=sample_in
    #pragma HLS INTERFACE s_axilite port=sample_out
    #pragma HLS INTERFACE s_axilite port=delay_ms
    #pragma HLS INTERFACE s_axilite port=feedback_gain
    #pragma HLS INTERFACE s_axilite port=sample_rate
    #pragma HLS INTERFACE s_axilite port=index bundle=CTRL
    #pragma HLS INTERFACE m_axi port=buffer offset=slave bundle=BUFFER
    #pragma HLS INTERFACE s_axilite port=return

    int local_index = *index;
    int delay_samples = (int)(delay_ms * 0.001f * sample_rate);
    if (delay_samples >= 44100) delay_samples = 44099;

    int read_index = (local_index + 44100 - delay_samples) % 44100;
    float delayed = buffer[read_index];

    float out = sample_in + feedback_gain * delayed;

    buffer[local_index] = out;
    local_index = (local_index + 1) % 44100;

    *index = local_index;
    *sample_out = out;
}

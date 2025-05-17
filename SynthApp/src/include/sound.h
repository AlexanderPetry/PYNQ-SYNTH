#pragma once

class sound
{
public:
	float frequency;
	float amplitude;
	float phase;
	float duration;
	float (*waveFunc)(float phase, float freq, float amp);
	float attack;
	float decay;
	float sustain;
	float release;

	sound();
	float tick(float dt);

	void play();
	void stop();
	bool isActive();

private:
    float time = 0.0f;
    float releaseStart = 0.0f;
    bool released = false;
    bool done = false;
};

namespace Wave {
    float sine(float phase, float /*frequency*/, float amplitude);

    float square(float phase, float /*frequency*/, float amplitude);

    float triangle(float phase, float /*frequency*/, float amplitude);

    float sawtooth(float phase, float /*frequency*/, float amplitude);
}

/**
 * @brief music notes to frequencies
 *
 * @details Defines corresponding frequencies for notes
 *
 * @note the usage of suffix 's' in the calls represents the word sharp
 * @example Cs0 = Csharp0
 */

class Notes
{
public:
    static constexpr float C0  = 16.35f;
    static constexpr float Cs0 = 17.32f;
    static constexpr float D0  = 18.35f;
    static constexpr float Ds0 = 19.45f;
    static constexpr float E0  = 20.60f;
    static constexpr float F0  = 21.83f;
    static constexpr float Fs0 = 23.12f;
    static constexpr float G0  = 24.50f;
    static constexpr float Gs0 = 25.96f;
    static constexpr float A0  = 27.50f;
    static constexpr float As0 = 29.14f;
    static constexpr float B0  = 30.87f;

    static constexpr float C1  = 32.70f;
    static constexpr float Cs1 = 34.65f;
    static constexpr float D1  = 36.71f;
    static constexpr float Ds1 = 38.89f;
    static constexpr float E1  = 41.20f;
    static constexpr float F1  = 43.65f;
    static constexpr float Fs1 = 46.25f;
    static constexpr float G1  = 49.00f;
    static constexpr float Gs1 = 51.91f;
    static constexpr float A1  = 55.00f;
    static constexpr float As1 = 58.27f;
    static constexpr float B1  = 61.74f;

    static constexpr float C2  = 65.41f;
    static constexpr float Cs2 = 69.30f;
    static constexpr float D2  = 73.42f;
    static constexpr float Ds2 = 77.78f;
    static constexpr float E2  = 82.41f;
    static constexpr float F2  = 87.31f;
    static constexpr float Fs2 = 92.50f;
    static constexpr float G2  = 98.00f;
    static constexpr float Gs2 = 103.83f;
    static constexpr float A2  = 110.00f;
    static constexpr float As2 = 116.54f;
    static constexpr float B2  = 123.47f;

    static constexpr float C3  = 130.81f;
    static constexpr float Cs3 = 138.59f;
    static constexpr float D3  = 146.83f;
    static constexpr float Ds3 = 155.56f;
    static constexpr float E3  = 164.81f;
    static constexpr float F3  = 174.61f;
    static constexpr float Fs3 = 185.00f;
    static constexpr float G3  = 196.00f;
    static constexpr float Gs3 = 207.65f;
    static constexpr float A3  = 220.00f;
    static constexpr float As3 = 233.08f;
    static constexpr float B3  = 246.94f;

    static constexpr float C4  = 261.63f;
    static constexpr float Cs4 = 277.18f;
    static constexpr float D4  = 293.66f;
    static constexpr float Ds4 = 311.13f;
    static constexpr float E4  = 329.63f;
    static constexpr float F4  = 349.23f;
    static constexpr float Fs4 = 369.99f;
    static constexpr float G4  = 392.00f;
    static constexpr float Gs4 = 415.30f;
    static constexpr float A4  = 440.00f;
    static constexpr float As4 = 466.16f;
    static constexpr float B4  = 493.88f;

    static constexpr float C5  = 523.25f;
    static constexpr float Cs5 = 554.37f;
    static constexpr float D5  = 587.33f;
    static constexpr float Ds5 = 622.25f;
    static constexpr float E5  = 659.25f;
    static constexpr float F5  = 698.46f;
    static constexpr float Fs5 = 739.99f;
    static constexpr float G5  = 783.99f;
    static constexpr float Gs5 = 830.61f;
    static constexpr float A5  = 880.00f;
    static constexpr float As5 = 932.33f;
    static constexpr float B5  = 987.77f;

    static constexpr float C6  = 1046.50f;
    static constexpr float Cs6 = 1108.73f;
    static constexpr float D6  = 1174.66f;
    static constexpr float Ds6 = 1244.51f;
    static constexpr float E6  = 1318.51f;
    static constexpr float F6  = 1396.91f;
    static constexpr float Fs6 = 1479.98f;
    static constexpr float G6  = 1567.98f;
    static constexpr float Gs6 = 1661.22f;
    static constexpr float A6  = 1760.00f;
    static constexpr float As6 = 1864.66f;
    static constexpr float B6  = 1975.53f;

    static constexpr float C7  = 2093.00f;
    static constexpr float Cs7 = 2217.46f;
    static constexpr float D7  = 2349.32f;
    static constexpr float Ds7 = 2489.02f;
    static constexpr float E7  = 2637.02f;
    static constexpr float F7  = 2793.83f;
    static constexpr float Fs7 = 2959.96f;
    static constexpr float G7  = 3135.96f;
    static constexpr float Gs7 = 3322.44f;
    static constexpr float A7  = 3520.00f;
    static constexpr float As7 = 3729.31f;
    static constexpr float B7  = 3951.07f;

    static constexpr float C8  = 4186.01f;
    static constexpr float Cs8 = 4434.92f;
    static constexpr float D8  = 4698.63f;
    static constexpr float Ds8 = 4978.03f;
    static constexpr float E8  = 5274.04f;
    static constexpr float F8  = 5587.65f;
    static constexpr float Fs8 = 5919.91f;
    static constexpr float G8  = 6271.93f;
    static constexpr float Gs8 = 6644.88f;
    static constexpr float A8  = 7040.00f;
    static constexpr float As8 = 7458.62f;
    static constexpr float B8  = 7902.13f;
};

#pragma once
class signal
{
public:
	enum Type { SINE, SQUARE, SAW, TRIANGLE };
	signal(Type type, float frequency, float phase, float amplitude);

    float nextSample(float sampleRate);
    void setFrequency(float freq);
    void reset();

private:
	Type type;
	float frequency;
	float phase;
	float amplitude;
};

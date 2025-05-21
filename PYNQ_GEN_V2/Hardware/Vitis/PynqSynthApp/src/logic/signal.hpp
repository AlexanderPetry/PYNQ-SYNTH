#pragma once
class signal
{
public:
	enum Type { SINE, SQUARE, SAW, TRIANGLE };
	signal(Type type, float frequency, float amplitude);

    float nextSample(float globalFrequency, float baseFrequency);
    void setFrequency(float freq);
    void reset();
	Type type;
	float frequency;
	float amplitude;
	float phase = 0.0f;
};

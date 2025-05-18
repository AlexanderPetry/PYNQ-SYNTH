#pragma once
#include <vector>
#include "signal.hpp"

class voice
{
public:
	void play();
	void stop();
	bool isActive() const;
	float nextSample(float sampleRate);
	void addSignal(signal s);
	void clear();
	std::vector<signal> signals;

private:
	bool active = false;

};

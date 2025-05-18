#include "voice.hpp"

void voice::play() {
    active = true;
}

void voice::addSignal(signal s) {
    signals.push_back(s);
}

void voice::clear() {
    signals.clear();
}

void voice::stop() {
    active = false;
    signals.clear();
}

bool voice::isActive() const {
    return active;
}

float voice::nextSample(float sampleRate) {
    if (!active) return 0.0f;

    float sum = 0.0f;
    for (auto& s : signals) {
        sum += s.nextSample(sampleRate);
    }
    return sum;
}

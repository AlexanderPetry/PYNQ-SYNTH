#include "mixer.h"

void mixer::addSound(const sound& s) {
    voice.push_back(s);
}

void mixer::play() {
    isPlaying = true;
}

void mixer::pause() {
    isPlaying = false;
}

void mixer::stop() {
    isPlaying = false;
    voice.clear();
}

float mixer::tick(float dt) {
    if (!isPlaying) return 0.0f;

    float mix = 0.0f;
    for (auto it = voice.begin(); it != voice.end(); ) {
        float sample = it->tick(dt);
        mix += sample * volume;

        if (!it->isActive())
            it = voice.erase(it);
        else
            ++it;
    }
    return mix;
}

#include "instrument.hpp"
#include "voice.hpp"

class custom : public instrument {
public:
    signal::Type waveform = signal::SINE;
    float attack = 0.1f, decay = 0.1f, sustain = 0.7f, release = 0.2f;

    void updateParams(int wave, float a, float d, float s, float r) {
        waveform = (signal::Type)wave;
        attack = a;
        decay = d;
        sustain = s;
        release = r;
    }

    voice createVoice(uint8_t note, uint8_t velocity) const override {
        float freq = MIDI::ToFreq(note);
        float amp = velocity / 127.0f;

        voice v;
        v.addSignal(signal(waveform, freq, amp));
        v.env = voice::Envelope{attack, decay, sustain, release};
        v.play();
        return v;
    }
};

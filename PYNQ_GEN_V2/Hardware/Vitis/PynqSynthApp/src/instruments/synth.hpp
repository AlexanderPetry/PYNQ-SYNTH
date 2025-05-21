#include "instrument.hpp"
#include "voice.hpp"

class synth : public instrument {
public:
	synth() = default;
    voice createVoice(uint8_t note, uint8_t velocity) const override {
        float freq = MIDI::ToFreq(note);
        float amp = velocity / 127.0f;

        voice v;
        v.addSignal(signal(signal::SAW,   freq,  amp));
        v.env = voice::Envelope{0.01f, 0.2f, 0.1f, 1.2f}; // ADSR
        v.play();
        return v;
    }
};

namespace MIDI {
	inline float ToFreq(int note) {
		return 440.0f * powf(2.0f, (note - 69) / 12.0f);
	}
}

#ifndef INSTRUMENT_HPP
#define INSTRUMENT_HPP

class instrument {
public:
    virtual ~instrument() = default;
    virtual voice createVoice(uint8_t note, uint8_t velocity) const = 0;
};

#endif // INSTRUMENT_HPP

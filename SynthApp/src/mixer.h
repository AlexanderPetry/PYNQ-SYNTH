#include <vector>
#include "sound.h"
#include "utils.h"

class mixer {
public:
    void addSound(const sound& s);
    void play();
    void pause();
    void stop();
    float tick(float dt); // called by ISR

private:
    std::vector<sound> voice;
    float volume = 1.0f;
    float speed = 1.0f;
    bool isPlaying = false;
};

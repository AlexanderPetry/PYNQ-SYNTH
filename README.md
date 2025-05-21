# PynqSynthApp
## Overview
PynqynthApp is a real-time audio synthesis and effects processing application targeting embedded platforms (e.g., Xilinx Zynq SoC). It supports multiple instruments, voices, and audio effects with MIDI input handling for dynamic control.

## Features
- Multiple instrument voices (piano, synth, organ, guitar, custom)
- Real-time MIDI input parsing and voice management
- Basic audio effects: echo, tremolo, distortion, lowpass, bitcrush, reverb
- Soft clipping and compression for cleaner audio output
- Timer-based interrupt-driven audio processing for stable sample rate

## Architecture
- Input: MIDI commands received via UART from an [external source](https://github.com/AlexanderPetry/ZMQProject)
- Audio processing: Voices generate samples, summed and processed with effects
- Output: Audio data sent to I2S interface for DAC playback
- Effect management: Selectable effects applied on mixed audio samples

## Usage
- Connect MIDI input source to the UART interface configured in the platform
- Build and deploy firmware to target embedded board
- Use MIDI messages to trigger notes and switch instruments/effects dynamically

## Dependencies
- Xilinx SDK with drivers for UART, timer, interrupts
- ARM CMSIS math library (for DSP functions)
- External MIDI input source (handled separately)

## Build & Deploy
- Standard cross-compilation with Xilinx tools
- Flash to embedded device
- Monitor serial output for debugging info


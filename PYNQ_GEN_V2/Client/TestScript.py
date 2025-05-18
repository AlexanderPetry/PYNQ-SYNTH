import serial
import keyboard

# Setup serial port
ser = serial.Serial('COM4', 115200)

# Map keys to MIDI notes (example: ASDF row)
key_note_map = {
    'a': 60,  # C4
    's': 62,  # D4
    'd': 64,  # E4
    'f': 65,  # F4
    'g': 67,  # G4
    'h': 69,  # A4
    'j': 71,  # B4
    'k': 72,  # C5
}

pressed = set()

def note_on(note):
    ser.write(bytes([0x90, note, 100]))

def note_off(note):
    ser.write(bytes([0x80, note, 0]))

print("Press keys to play notes. Press ESC to quit.")

while True:
    event = keyboard.read_event()
    key = event.name

    if key == 'esc':
        break

    if key in key_note_map:
        note = key_note_map[key]
        if event.event_type == 'down' and key not in pressed:
            note_on(note)
            pressed.add(key)
        elif event.event_type == 'up' and key in pressed:
            note_off(note)
            pressed.remove(key)

ser.close()

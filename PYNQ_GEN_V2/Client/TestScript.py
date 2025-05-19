import serial
import keyboard
import threading

# Setup serial port
ser = serial.Serial('COM4', 115200, timeout=0.01)

# Map keys to MIDI notes
key_note_map = {
    'a': 60,
    's': 62,
    'd': 64,
    'f': 65,
    'g': 67,
    'h': 69,
    'j': 71,
    'k': 72,
}

pressed = set()

def note_on(note):
    ser.write(bytes([0x90, note, 100]))

def note_off(note):
    ser.write(bytes([0x80, note, 0]))

def uart_listener():
    while True:
        data = ser.read(64)
        if data:
            print("Received from PYNQ:", data)

# Start UART listener thread
threading.Thread(target=uart_listener, daemon=True).start()

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

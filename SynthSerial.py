import serial
import time

ser = serial.Serial('COM4', 115200, timeout=0.1)  # Adjust as needed

def send(cmd):
    ser.write((cmd + '\n').encode())
    print("Sent:", cmd)
    time.sleep(0.05)
    while ser.in_waiting:
        print("Received:", ser.readline().decode(errors='ignore').strip())

# Initial setup
send("I2")               # Set waveform to sine
send("VOL0.2")           # Set max volume
send("ENV 0.01 0.1 0.8 0.2")  # Set attack, decay, sustain, release


song = [
    (74, 127, 30), (74, 127, 30), (76, 127, 30), (78, 127, 60),
    (74, 127, 30), (78, 127, 30), (81, 127, 60), (79, 127, 30),
    (78, 127, 30), (76, 127, 30), (74, 127, 60),
]

while True:
    for note, vel, dur in song:
        send(f"N{note} V{vel} D{dur}")
        time.sleep(dur * 0.01 + 0.05)
    time.sleep(2)

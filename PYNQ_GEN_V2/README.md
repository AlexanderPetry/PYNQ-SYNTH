repo/
├── hardware/           # Vivado project + Vitis platform
│   ├── vivado/         # Block design + exported XSA
│   └── vitis/          # BOOT.bin and platform files
│
├── firmware/           # Linux-side C++ code for the PYNQ board
│   ├── src/            # Core app logic
│   └── scripts/        # Bash script for pulling/building/running
│
├── client/             # PC-side C++ client for interacting with the board
│   └── src/
│
├── deploy/             
│   ├── SD_image/       # Final SD card image (BOOT.bin, image.ub, etc.)
│   └── downloadable/   # Optional: user-facing builds or releases
│
├── .github/
│   └── workflows/      # GitHub Action to trigger webhook on board
│
└── README.md

#!/bin/bash

# whisper-audio2text.sh
# Author: Lalatendu Swain

echo "[+] Installing required packages..."
sudo apt update
sudo apt install -y ffmpeg python3-venv git curl

echo "[+] Creating Python virtual environment..."
python3 -m venv ~/whisper-venv
source ~/whisper-venv/bin/activate

echo "[+] Installing Whisper..."
pip install -U pip setuptools wheel
pip install openai-whisper

echo "[+] Please enter the name of your audio file (e.g., audio.mp3):"
read AUDIO_FILE

echo "[+] Transcribing $AUDIO_FILE ..."
whisper "$AUDIO_FILE" --language English

echo "[+] Transcription completed. Output files saved in current directory."

deactivate

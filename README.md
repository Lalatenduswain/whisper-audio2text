### ✅ `Whisper Audio2Text`

This shell script automates the installation of OpenAI Whisper on Ubuntu and transcribes audio to text using a virtual environment.

---

````markdown
# 🎧 Audio2Text Transcription using OpenAI Whisper on Ubuntu

Convert any voice recording (interviews, meetings, notes, etc.) into accurate text using OpenAI's Whisper model — fully automated on Ubuntu with one script.

---

## 📌 Features

- ✅ One-line setup script for Ubuntu
- ✅ Uses Python virtual environment (no system conflicts)
- ✅ Supports MP3, WAV, FLAC, and other common formats
- ✅ Automatic transcription with support for English and multiple languages
- ✅ Outputs subtitle (`.srt`) and plain text (`.txt`) files
- ✅ Model selection: tiny to large-v3 (adjustable by user)

---

## 📖 Installation Guide

> Please ensure you're using **Ubuntu 20.04+** with **Python 3.8+** and have `sudo` access.

### 🔧 Prerequisites

Install required packages:
```bash
sudo apt update
sudo apt install ffmpeg python3-venv git curl -y
````

Clone the repository:

```bash
git clone https://github.com/Lalatenduswain/whisper-audio2text.sh.git
cd whisper-audio2text.sh
```

Give execute permission:

```bash
chmod +x whisper-audio2text.sh
```

Run the script:

```bash
./whisper-audio2text.sh
```

---

## 🧠 What the Script Does

This script performs the following steps:

1. Installs required system packages (`ffmpeg`, `python3-venv`)
2. Creates a virtual environment at `~/whisper-venv`
3. Activates the environment
4. Installs `openai-whisper` via pip
5. Prompts user to input an audio file name
6. Runs Whisper with the selected model to transcribe
7. Outputs the transcription in `.txt`, `.srt`, and `.vtt` formats

---

## 📂 Script Name

**Script:** `whisper-audio2text.sh`

### 📜 Sample Script (for reference)

```bash
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
```

---

## 💖 Support & Donations

If you find this project useful, consider supporting:

☕ [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)

---

## 🛠 Disclaimer | Running the Script

**Author:** Lalatendu Swain
[GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

---

## 🐞 Support or Contact

Encountering issues or have suggestions? Submit them here:

👉 [GitHub Issues](https://github.com/Lalatenduswain/whisper-audio2text/issues)

---

## 📦 Repository Info

**Git URL:** [https://github.com/Lalatenduswain/whisper-audio2text](https://github.com/Lalatenduswain/whisper-audio2text)

Please clone it from:

```bash
git clone https://github.com/Lalatenduswain/whisper-audio2text
```

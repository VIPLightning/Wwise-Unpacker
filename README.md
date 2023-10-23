# Wwise-Unpacker-Revamped
This github project is a fork of [Vextil/Wwise-Unpacker](https://github.com/Vextil/Wwise-Unpacker) and an inspiration of other people's work that have also forked his project.

What makes this project stand out? The idea was to add support for "FLAC" and convert your game soundtracks to a lossless and open-source file extension without any sacrifices to your storage space unlike WAV and its proprietary nature. And as for MP3 and OGG, despite its compression, the format eventually looses information making these two not viable in the long run. That's where FLAC comes in with --compression-level allowing the end user to control how much and still retains great sound quality. I have not noticed the sound quality diminishing after testing the differences when playbacking songs at 24 bits per sample @ 44khz (level 5 default) vs. 16 bits per sample at 48khz (level 8). FLAC fills in many of the gaps that WAV, MP3, and OGG cannot do. 

**TODO List:**
 * Add batch script to make easier to change FLAC compression level 1-8
 * Rework the Unpack to MP3 batch script (Optional)
 * Add Python support as an option to extract and decode videogame sounds/voices/OSTs (TBD)
 * Rework how quickBMS extracts sounds and music; extracting to WAV using quickBMS will break. However extracting to .WEM will play music when using foobar2k

The unpacking was tested on Genshin Impact.
---
**Special Thanks To:**
* [VGMStream](https://github.com/vgmstream/vgmstream)
* [Vextil/Wwise-Unpacker](https://github.com/Vextil/Wwise-Unpacker)
* [FLAC](https://xiph.org/flac/)
* [QuickBMS](https://aluigi.altervista.org/quickbms.htm)
* [Trust04zh](https://github.com/Trust04zh/Wwise-Unpacker) for the unpack to wav bat

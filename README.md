# Wwise-Unpacker-Revamped
This github project is a fork of [Vextil/Wwise-Unpacker](https://github.com/Vextil/Wwise-Unpacker) and an inspiration of other people's work that have also forked his project.

What makes this project stand out? It was aimed at to add support for "FLAC" and convert your game soundtracks to a lossless and open-source file extension without any sacrifices to your storage space unlike WAV and its proprietary nature. And as for MP3 and OGG, despite its compression, the format eventuslly looses information making these two not viable in the long run. That's where --compression-level comes in allow the end user to control how much. I set it to --best (--compression-level-8) which will compress your music more the highest available at little to no expense. Even better, I have not noticed the sound quality diminishing after testing the differences when playbacking songs at 24 bits per sample @ 44khz vs. 16 bits per sample at 48khz. FLAC fills in many of the gaps that WAV, MP3, and OGG cannot do. 

The unpacking was tested on Genshin Impact.
---
**Special Thanks To:**
* [VGMStream](https://github.com/vgmstream/vgmstream)
* [Vextil/Wwise-Unpacker](https://github.com/Vextil/Wwise-Unpacker)
* [FLAC](https://xiph.org/flac/)
* [QuickBMS](https://aluigi.altervista.org/quickbms.htm)
* [Trust04zh](https://github.com/Trust04zh/Wwise-Unpacker) for the unpack to wav bat

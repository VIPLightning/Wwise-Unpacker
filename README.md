# Wwise-Unpacker-Revamped
This github project is a fork of [Vextil/Wwise-Unpacker](https://github.com/Vextil/Wwise-Unpacker) and an inspiration of other people's work that have also forked his project.

What makes this project stand out? It was aimed at to add support for "FLAC" and convert your game soundtracks to a lossless and open-source file extension without any sacrifices to your storage space(unlike WAV and its proprietary nature). That's where --compression-level comes in. I set it to --best (--compression-level-8) which will compress your music more and sets it to level 8, the highest available. Even better, I have not noticed the sound quality diminishing after testing the differences when playbacking songs at 24 bits per sample @ 44khz vs. 16 bits per sample at 48khz.

The unpacking was tested on Genshin Impact.
---
**Special Thanks To:**
* [VGMStream](https://github.com/vgmstream/vgmstream)
* [Vextil/Wwise-Unpacker](https://github.com/Vextil/Wwise-Unpacker)
* [FLAC](https://xiph.org/flac/)
* [QuickBMS](https://aluigi.altervista.org/quickbms.htm)
* [Trust04zh](https://github.com/Trust04zh/Wwise-Unpacker) for the unpack to wav bat

source /home/lpc/repos/pwndbg/gdbinit.py
set architecture aarch64
target remote localhost:1234
file ./build/kernel.img
layout split

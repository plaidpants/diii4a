Doom3 port to Android
=====================

### About

Based on source code contained in DIII4A apk.

### Compiler Workarounds

1. Compile the <pre>libogg</pre>, <pre>libvorbis</pre> and
   <pre>libvorbisfile</pre> from
   https://www.github.com/mmartins/libvorbis-libogg-android.git
2. Create a link or copy <pre>crtbegin_so.o</pre> and
   <pre>crtend_so.o</pre> from <pre>${SYSROOT}</pre> to the root
   directory to avoid linking errors.

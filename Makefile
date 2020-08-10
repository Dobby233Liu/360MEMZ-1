# stub
# windows-only

all: Build Build\stopworking.exe Build\360MEMZ.dll Build\360MEMZ.exe 360MEMZ.exe

Build:
	mkdir Build
	copy AdditionalData\*.* Build
	del Build\*readme.md

Build\stopworking.exe: Build
	g++ stopworking\stopworking.cpp -std=gnu++17 -DUNICODE -D_UNICODE -lwer -O3 -o Build\stopworking

# doesn't require stopworking
Build\360MEMZ.dll: Build
	gcc DLLMain\main.c DLLMain\winver.c -std=c17 -shared -DUNICODE -D_UNICODE -lgdi32 -lcomctl32 -O3 -o Build\360MEMZ.dll

Build\360MEMZ.exe: Build Build\stopworking.exe Build\360MEMZ.dll
	windres WinMain\rsrc.rc -O coff -o rs.res
	g++ WinMain\utils.cpp WinMain\console.cpp WinMain\main.cpp rs.res -std=gnu++17 -mwindows -DUNICODE -D_UNICODE -lgdi32 -lwinmm -ldwmapi -luxtheme -O3 -o Build\360MEMZ.exe
	del rs.res

360MEMZ.exe: Build Build\stopworking.exe Build\360MEMZ.dll Build\360MEMZ.exe
	makensis 360MEMZ.nsi
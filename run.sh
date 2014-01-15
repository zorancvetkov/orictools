#!/bin/bash

make
cd bin

./txt2lvl ../test/AlbertoG1-1.txt levels.txt
cat ../test/bager.bas levels.txt > bager.bas
./txt2bas bager.bas bager.tap
./tap2dsk bager.tap bager.dsk

cp bager.dsk bager_mfm.dsk
./old2mfm bager_mfm.dsk
cp *_mfm.dsk ../../oriculator-read-only/disks
cp bager.tap ../../oriculator-read-only/tapes

#./hxcfe -conv:HXC_HFE -finput:amazea.dsk -foutput:amazea2.hfe
#./hxcfe -ifmode:EMU_SHUGART_FLOPPYMODE -conv:HXC_HFE -uselayout:DOS_DD_720KB -finput:krys.dsk -foutput:krys2.hfe
#./hxcfe -conv:HXC_HFE -uselayout:ORIC_DISK -finput:krys.dsk -foutput:krys2.hfe

./txt2bas ../test/test.bas test.tap
cp test.tap ../../oriculator-read-only/tapes

cd ../../oriculator-read-only
#./oricutron -d disks/bager_mfm.dsk 
#./oricutron -t tapes/bager.tap

./oricutron -t tapes/test.tap

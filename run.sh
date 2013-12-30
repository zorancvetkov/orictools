#!/bin/bash

make
cd bin
cp ../test/test.bas .
./txt2bas test.bas test.tap
./tap2dsk test.tap test.dsk

#./tap2dsk Amazea.tap amazea.dsk
#./bas2txt Amazea.tap > amazea.bas
#./txt2bas amazea.bas amazea.tap
#./tap2dsk amazea.tap amazea2.dsk
#cp amazea.dsk amazea_mfm.dsk
#./old2mfm amazea_mfm.dsk

cp test.dsk test_mfm.dsk
./old2mfm test_mfm.dsk
cp *_mfm.dsk ../../oriculator-read-only/disks

#./hxcfe -conv:HXC_HFE -finput:amazea.dsk -foutput:amazea2.hfe
#./hxcfe -ifmode:EMU_SHUGART_FLOPPYMODE -conv:HXC_HFE -uselayout:DOS_DD_720KB -finput:krys.dsk -foutput:krys2.hfe
#./hxcfe -conv:HXC_HFE -uselayout:ORIC_DISK -finput:krys.dsk -foutput:krys2.hfe

cd ../../oriculator-read-only
./oricutron -d disks/test_mfm.dsk 


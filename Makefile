
.PHONY: all clean debug release

all:
	mkdir -p build; cd build; cmake ..; make install

clean:
	cd build; cmake ..; make clean

debug:
	mkdir -p build; cd build; cmake -D CMAKE_BUILD_TYPE=Debug ..; make install

release:
	mkdir -p build; cd build; cmake -D CMAKE_BUILD_TYPE=MinSizeRel  ..; make install


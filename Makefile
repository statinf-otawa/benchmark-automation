.PHONY: armv7 thumbv7 clean

all: armv7 thumbv7

armv7: 
	cd benchmark_cfiles && $(MAKE) armv7 && mv *.elf ../armv7
	cd armv7 && $(MAKE) && mv *-diffs.txt ../diffs


thumbv7: 
	cd benchmark_cfiles && $(MAKE) thumbv7 && mv *.elf ../thumbv7
	cd thumbv7 && $(MAKE) && mv *-diffs.txt ../diffs

clean: 
	-cd benchmark_cfiles && $(MAKE) clean
	-cd armv7 && $(MAKE) clean-all
	-cd thumbv7 && $(MAKE) clean-all
	-rm diffs/*-diffs.txt
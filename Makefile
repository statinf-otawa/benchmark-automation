.PHONY: armv7 clean

armv7: 
	cd benchmark_cfiles && $(MAKE) armv7 && mv *.elf ../armv7
	cd armv7 && $(MAKE) && mv *-diffs.txt ../

# thumbv7: 
# 	cd benchmark_cfiles && $(MAKE) thumbv7 && mv *.elf ../thumbv7
# 	cd thumbv7 && $(MAKE) && mv *-diffs.txt ../

clean: 
	-cd benchmark_cfiles && $(MAKE) clean
	-cd armv7 && $(MAKE) clean-all
	-rm *-diffs.txt
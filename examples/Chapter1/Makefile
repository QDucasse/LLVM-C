CC=clang
CFLAGS=-g `llvm-config --cflags`
LD=clang++
LDFLAGS=`llvm-config --cxxflags --ldflags --libs core analysis bitwriter --system-libs`

all: sum

sum.o: sum.c
	$(CC) $(CFLAGS) -c $<

sum: sum.o
	$(LD) $< $(LDFLAGS) -o $@

sum.bc: sum
	./sum

sum.ll: sum.bc
	llvm-dis $<

clean:
	-rm -f sum.o sum sum.bc sum.ll

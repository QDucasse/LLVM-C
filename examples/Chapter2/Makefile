CC=clang
CFLAGS=-g `llvm-config --cflags`
LD=clang++
LDFLAGS=`llvm-config --cxxflags --ldflags --libs all --system-libs`

all: sum

sum.o: sum.c
	$(CC) $(CFLAGS) -c $<

sum: sum.o
	$(LD) $< $(LDFLAGS) -o $@

sum_llvm.o: sum
	./sum

sum_llvm.asm: sum
	./sum

# sum.ll: sum.bc
# 	llvm-dis $<

clean:
	-rm -f sum.o sum sum.bc sum_llvm.o sum_llvm.asm

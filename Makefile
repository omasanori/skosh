.POSIX:

BINOUT = bin
LIBS = -lm
OBJS = src/skosh.o

all: $(BINOUT)/skosh

$(BINOUT)/skosh: $(OBJS)
	@mkdir -p -- $(BINOUT)
	@printf 'CCLD\t%s\n' '$@'
	@$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.c.o:
	@printf 'CC\t%s\n' '$@'
	@$(CC) $(CFLAGS) -c -o $@ $<

clean:
	@rm -rf -- bin/skosh $(OBJS)

.PHONY: all clean

CSRCS = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(CSRCS))

DEPDIR = .deps
DEPS = $(patsubst %.o,%.d,$(OBJS))
DEPS := $(addprefix $(DEPDIR)/,$(DEPS))
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

CC = gcc
CFLAGS = -g -Wall

all: $(DEPDIR) $(OBJS)

.c.o:
	$(CC) $(CFLAGS) $(DEPFLAGS) -c $<

$(DEPDIR):
	mkdir -p $@

.PHONY: clean

clean:
	-$(RM) $(OBJS) $(TGTS)
	-$(RM) -rf $(DEPDIR)


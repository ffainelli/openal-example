CC?=gcc
LDLIBS?=-lopenal
ifeq ($(LIBAUDIO),1)
CFLAGS+=-DLIBAUDIO
LDLIBS+=-laudio
else
LDLIBS+=-lalut
endif
APP:=openal-example
OBJS:= $(APP).o

all: $(APP)

%.o: %c
	$(CC) $(CFLAGS) -c $< -o $@

$(APP): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDLIBS)

clean:
	-rm -f $(OBJS) $(APP)


CC?=gcc
LDLIBS?=-lopenal -lalut
APP:=openal-example
OBJS:= $(APP).o

all: $(APP)

%.o: %c
	$(CC) $(CFLAGS) -c $< -o $@

$(APP): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDLIBS)

clean:
	-rm $(OBJS) $(APP)


BREAKPAD_SRCDIR := ../google-breakpad
BREAKPAD_OBJDIR := ../obj-breakpad
BREAKPAD_LIBS := $(BREAKPAD_OBJDIR)/src/libbreakpad.a $(BREAKPAD_OBJDIR)/src/third_party/libdisasm/libdisasm.a

BIN := minidump-memorylist
all: $(BIN)

$(BIN): $(BIN).cc $(BREAKPAD_LIBS)
	$(CXX) $(CXXFLAGS) -o $@ $< $(BREAKPAD_LIBS) -I$(BREAKPAD_SRCDIR)/src

clean:
	$(RM) $(BIN)


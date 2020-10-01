NAME = libc
CFLAGS = -DNO_FLOATING_POINT
SRCS = $(shell find src/ -name "*.c" -o -name "*.S" -o -name "*.cpp")
include $(NAVY_HOME)/Makefile

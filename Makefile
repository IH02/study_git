# 설정
CC = gcc
CFLAGS = -Wall -g
TARGET = build/main.exe
SRCS = $(wildcard src/*.c)
OBJS = $(SRCS:src/%.c=obj/%.o)

# 기본 빌드 명령
all: clean prepare $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)
	@echo build success
obj/%.o: src/%.c FORCE
	$(CC) $(CFLAGS) -c $< -o $@

prepare:
	@mkdir obj 2>nul || exit 0
	@mkdir build 2>nul || exit 0

run: all
	./$(TARGET)

clean:
	del /Q obj\*.o
	del /Q build\*.exe

FORCE:

# 설정
CC = gcc
CFLAGS = -Wall -g
TARGET = build/main.exe
SRCS = $(wildcard src/*.c)
OBJS = $(SRCS:src/%.c=obj/%.o)

# 기본 빌드 명령
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

obj/%.o: src/%.c
	@if not exist obj mkdir obj
	@if not exist build mkdir build
	$(CC) $(CFLAGS) -c $< -o $@

run: all
	./$(TARGET)

clean:
	del /Q obj\*.o
	del /Q build\*.exe

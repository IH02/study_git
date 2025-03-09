# 컴파일러 및 옵션 설정
CC = gcc
CFLAGS = -Wall -g
TARGET = main
SRCS = src/main.c src/utils.c
OBJS = $(SRCS:.c=.o)

# 기본 빌드 명령
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# 실행
run: all
	./$(TARGET)

# 파일 정리
clean:
	rm -f $(TARGET) $(OBJS)

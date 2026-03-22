CC = clang
CFLAGS = -Wall -Wextra -std=c11 -Iinclude

main: src/main.c
	$(CC) $(CFLAGS) src/main.c -o main

clean:
	rm -f main
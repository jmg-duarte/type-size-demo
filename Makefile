all: bin/server bin/server32 bin/client bin/client32

bin/client32: src/client.c
	gcc src/client.c -m32 -o bin/client32

bin/client: src/client.c
	gcc src/client.c -o bin/client

bin/server32: src/server.c
	gcc src/server.c -m32 -o bin/server32

bin/server: src/server.c
	gcc src/server.c -o bin/server

clean:
	rm -rf bin/*
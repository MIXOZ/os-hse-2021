FLAGS = -g -no-pie

main: main.o print_hello.o
	gcc $(FLAGS) $^ -o $@

print_hello.o: task-01.s
	gcc $(FLAGS) -c $< -o $@

main.o: main.c
	gcc $(FLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -rf *.o main
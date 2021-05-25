FLAGS = -g -no-pie

main: main.o write_to_file.o
	gcc $(FLAGS) $^ -o $@

write_to_file.o: task-02.s
	gcc $(FLAGS) -c $< -o $@

main.o: main.c
	gcc $(FLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -rf *.o main
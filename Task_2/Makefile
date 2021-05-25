FLAGS = -g -no-pie

main: main.o product_of_min_and_max_primes.o
	gcc $(FLAGS) $^ -o $@

product_of_min_and_max_primes.o: task-02.s
	gcc $(FLAGS) -c $< -o $@

main.o: main.c
	gcc $(FLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -rf *.o main
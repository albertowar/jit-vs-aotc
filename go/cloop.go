package main

// Importing packages
import (
	"fmt"
	"os"
	"strconv"
	"time"
)

var numbers = []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

func sum() int {
	sum := 0
	for i := 0; i < len(numbers); i++ {
		sum += i
	}
	return sum
}

func main() {
	iterations, _ := strconv.Atoi(os.Args[1])

	for i := 0; i < iterations; i++ {
		start := time.Now()
		sum()
		end := time.Now()

		diff := end.Sub(start)
		fmt.Println("Time: ", diff)
	}
}

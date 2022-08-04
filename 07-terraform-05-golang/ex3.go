package main

import "fmt"

func main() {

	for i := 1; i <= 100; i++ {
		if ((i - 1) % 10) == 0 {
			fmt.Print()
		}
		if (i % 3) == 0 {
			fmt.Print(i, ", ")
		}
	}
}

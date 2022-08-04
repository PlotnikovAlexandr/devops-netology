package main

import "fmt"

func main() {
	x := []int{48, 96, 86, 68, 57, 82, 63, 70, 37, 34, 83, 27, 19, 97, 9, 17}
	y := 0
	fmt.Println("Список чисел : ", x)
	for i, z := range x {
		if i == 0 {
			y = z
		} else {
			if z < y {
				y = z
			}
		}
	}
	fmt.Println("Минимальное число : ", y)
}

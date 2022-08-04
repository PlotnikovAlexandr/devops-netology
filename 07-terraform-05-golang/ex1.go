package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Print("Введите число: ")
	var input float64

	fmt.Scanf("%f", &input)
	result := input * float64(0.3048)
	resultm := math.Round(result)
	resultf := fmt.Sprintf("%.2f", result)
	fmt.Println("Число в метрах:", resultm)
	fmt.Println("Число в метрах с точностью:", resultf)
}

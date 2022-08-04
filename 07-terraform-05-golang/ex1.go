package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Print("Vvedite chislo: ")
	var input float64

	fmt.Scanf("%f", &input)
	result := input * float64(0.3048)
	resultm := math.Round(result)
	resultf := fmt.Sprintf("%.2f", result)
	fmt.Println("Chislo v metrah:", resultm)
	fmt.Println("Chislo v metrah s tochkoi:", resultf)
}

package main

import "testing"

func Test_main(t *testing.T) {
	tests := []struct {
		name string
	}{
		for i := 1; i <= 1000; i++ {
			if ((i - 1) % 10) == 0 {
				fmt.Print()
			}
			if (i % 3) == 0 {
				fmt.Print(i, ", ")
			}
		}
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			main()
		})
	}
}

package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	l := nextLine()
	strs := strings.Split(l, " ")
	xs := []float64{}
	for _, v := range strs {
		x, _ := strconv.ParseInt(v, 10, 0)
		xs = append(xs, float64(x))
	}
	fmt.Println(xs[0]/xs[1]*xs[2])
}

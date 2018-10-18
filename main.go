package main

import (
	"fmt"
	"log"
	"os"

	"github.com/Knetic/govaluate"
)

func main() {
	if len(os.Args) == 1 {
		log.Fatal("No expression has been passed")
	}
	for i, arg := range os.Args {
		if i == 0 {
			continue
		}
		expression, err := govaluate.NewEvaluableExpression(arg)
		if err != nil {
			log.Fatal(err)
		}
		result, err := expression.Evaluate(nil)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Println(result)
	}
}

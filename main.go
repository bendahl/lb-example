package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe(":8080",nil))
}

func handler(w http.ResponseWriter, r *http.Request) {
	hostname, _ := os.Hostname()
	_, _ = fmt.Fprintf(w, "%s", hostname)
}

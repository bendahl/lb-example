package main

import (
	uuid "github.com/google/uuid"
	"log"
	"net/http"
)

func main() {
	id := uuid.New()
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) { _, _ = w.Write([]byte(id.String())) })
	log.Fatal(http.ListenAndServe(":8080", nil))
}

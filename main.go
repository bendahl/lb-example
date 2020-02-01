package main

import (
	"flag"
	"fmt"
	uuid "github.com/google/uuid"
	"log"
	"net/http"
	"os"
	"time"
)

func main() {
	port := flag.Int("p", 8080, "port to listen on")
	flag.Parse()

	id := uuid.New()
	hostname, _ := os.Hostname()
	starttime := fmt.Sprint(time.Now().Format(time.RFC850))
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		_, _ = fmt.Fprintf(w, "Hello from host '%s' started on %s. UUID: %s", hostname, starttime, id)
	})
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%v", *port), nil))
}

package main

import (
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hi there, %s!", r.URL.Path[1:])
}

func main() {
    http.HandleFunc("/greet/", handler)
    log.Fatal(http.ListenAndServe(":8086", nil))
}

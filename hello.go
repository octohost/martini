package main

import "github.com/codegangsta/martini"

func main() {
  m := martini.Classic()
  m.Get("/", func() string {
    return "<html><head><title>martini</title></head><body><h1>Hello world!</h1></body></html>"
  })
  m.Run()
}

package main

import (
	"github.com/fissilejonathan/time/view/page/home"
	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()

	e.Static("/public", "public")

	e.GET("/", func(c echo.Context) error {
		name := "Jonathan Morales"

		return home.Page(&name).Render(c.Request().Context(), c.Response().Writer)
	})

	e.Logger.Fatal(e.Start(":8080"))
}

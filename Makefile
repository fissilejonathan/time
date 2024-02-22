run:
	go run cmd/main.go

tailwind:
	tailwindcss -o css/styles.css --minify

templ:
	templ generate

templ-watch:
	templ generate --watch
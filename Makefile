air:
	air

tailwind-watch:
	tailwindcss -o public/css/styles.css --watch

tailwind-build:
	tailwindcss -o public/css/styles.css --minify

templ-watch:
	templ generate --watch

templ-build:
	templ generate
debug:
	@make -j2 run-air &
	@make -j2 templ-watch &
	@wait

run-air:
	air

tailwind:
	tailwindcss -o css/styles.css --minify

templ:
	templ generate

templ-watch:
	templ generate --watch
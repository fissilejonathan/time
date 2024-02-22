debug:
	@make -j2 run-air &
	@PID1=$$!; \
	make -j2 templ-watch & \
	PID2=$$!; \
	trap 'kill $$PID1 $$PID2' SIGINT; \
	wait

run-air:
	air

tailwind:
	tailwindcss -o css/styles.css --minify

templ:
	templ generate

templ-watch:
	templ generate --watch
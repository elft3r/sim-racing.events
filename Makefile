watch:
	docker run --rm -it \
		--volume="${PWD}":/srv/jekyll \
		-p 35729:35729 \
		-p 4000:4000 \
		elft3r/jekyll \
		bash -c "bundle update && jekyll serve --drafts --future -l watch -P 4000 -H 0.0.0.0"

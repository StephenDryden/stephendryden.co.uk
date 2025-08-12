# Simple local preview for the static site
# Usage:
#   make serve      # Start local server on http://localhost:8000
#   make open       # Open default browser
#   make lint       # Basic HTML/CSS validation (requires tidy + csslint if installed)

serve:
	python3 -m http.server 8000 --bind 127.0.0.1

open:
	open http://localhost:8000

lint:
	@command -v tidy >/dev/null && tidy -qe index.html || echo "Install 'tidy' for HTML linting"; \
	command -v csslint >/dev/null && csslint styles.css || echo "Install 'csslint' (npm install -g csslint) for CSS linting";

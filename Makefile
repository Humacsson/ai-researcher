
inference: .env
	(set -a && . .env && python src/inference.py)

gradio: .env gradio.env
	(set -a && . .env && . .gradio.env && python src/gradio/launch.py)

.env:
	cp .defaults.env .env

gradio.env:
	cp .gradio.defaults.env .gradio.env


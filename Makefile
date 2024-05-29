
start: inference
chat: inference
inference: .env
	(set -a && . .env && python src/inference/main.py)

deps: dependencies
dependencies:
	python -m pip install -r requirements.txt
	python -m pip install -r requirements.gradio.txt

gradio: .env .gradio.env
	(set -a && . .env && . .gradio.env && python src/gradio/main.py)

.env:
	cp .defaults.env .env

.gradio.env:
	cp .gradio.defaults.env .gradio.env


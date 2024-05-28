
inference:
	(set -a && . .env && python src/inference.py)

.env:
	cp sample.env .env


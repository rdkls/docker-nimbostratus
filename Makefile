image:
	-docker rmi -f nimbostratus 2>/dev/null
	docker build -t nimbostratus .

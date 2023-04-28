allow_local_connections:
	@echo "Allowing local connections"
	- xhost +local:

build:
	@echo "Building image"
	- docker build -t talend-studio .

run:
	@echo "Setting DISPLAY"
	- docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix talend-studio
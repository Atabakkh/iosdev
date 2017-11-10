CWD="$(pwd)"

build: 
	docker build -t ios-dev .

test_console:  build
	docker run -it --security-opt seccomp=unconfined -p 8090:8090 -v $CWD:/root/iosdev -t ios-dev /bin/bash

test: build 
	docker run -it --security-opt seccomp=unconfined -p 8090:8090 -v $CWD:/root/iosdev -t ios-dev swift test

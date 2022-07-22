BOARD?=arduino:samd:mzero_bl
PORT := $(shell ls /dev/cu.usbmodem*)

.PHONY: default lint all flash clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright,-whitespace/line_length *.ino

all:
	arduino-cli compile --fqbn $(BOARD) ./

flash:
	arduino-cli upload -p $(PORT) --fqbn $(BOARD)

server:
	echo "Open Chrome browser at http://localhost:8000"
	python -m SimpleHTTPServer 8000

clean:
	rm -r build

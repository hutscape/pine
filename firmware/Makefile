BOARD?=arduino:samd:mzero_bl
PORT?=/dev/cu.usbmodem14102

.PHONY: lint compile upload clean

default: lint all flash clean

lint:
	cpplint --extensions=ino --filter=-legal/copyright,-whitespace/line_length *.ino

all:
	arduino-cli compile --fqbn $(BOARD) ./

flash:
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) ./

clean:
	rm -f .*.hex
	rm -f .*.elf

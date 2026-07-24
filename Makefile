.PHONY: build watch clean

FONT_PATH := fonts

build:
	typst compile --font-path $(FONT_PATH) main.typ

watch:
	typst watch --font-path $(FONT_PATH) main.typ

clean:
	rm -f main.pdf

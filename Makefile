export TEXINPUTS := $(TEXINPUTS):$(PWD)/src

.PHONY: demo

demo:
	cd ./demo && lualatex demo.tex

clean:
	cd ./demo && rm $$(ls | grep -v demo.tex)

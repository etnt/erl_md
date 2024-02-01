


.PHONY: test
test: mjson

.PHONY: mjson
mjson: ./test/mjson
	cat ./test/mjson/src/mjson.erl | ./copilot-gen-md.sh > ./test/mjson-copilot.md
	./gen-md.sh ./test/mjson/src/mjson.erl > ./test/mjson.md

./test/mjson:
	(cd test; git clone --depth 1 https://github.com/mbj4668/mjson)

LUAROCKS ?=
BUSTED = luarocks install busted
CHECK = luarocks install luacheck
COV = luarocks install luacov
COVALL = luarocks install luacov-coveralls
DISCOUNT = luarocks install lua-discount
LDOC = luarocks install ldoc

all: clean global

clean:
	@rm -rf ./docs

local:
	$(BUSTED) --local && $(CHECK) --local
	$(COV) --local && $(COVALL) --local
	$(DISCOUNT) --local && $(LDOC) --local
	@make $(LUAROCKS) run

global:
	$(BUSTED) && $(CHECK)
	$(COV) && $(COVALL)
	$(DISCOUNT) && $(LDOC)
	@make run

run:
	@make test
	@make docs

test:
	$(LUAROCKS)luacheck . \
	&& $(LUAROCKS)busted -R Test --verbose

docs:
	$(LUAROCKS)ldoc Lib -c ./config.ld

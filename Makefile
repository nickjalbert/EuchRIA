#Builds Euchria

SOURCES := $(wildcard $(EUCHRIA_ROOT)/src/*.mxml)
TARGETS := $(SOURCES:.mxml=.swf)
TARGETS := $(subst src,bin, $(TARGETS))



all: $(TARGETS)

$(EUCHRIA_ROOT)/bin/%.swf : $(EUCHRIA_ROOT)/src/%.mxml
	@mkdir -p $(EUCHRIA_ROOT)/bin
	mxmlc $< -o $@

clean: 
	rm -rf $(EUCHRIA_ROOT)/bin/*


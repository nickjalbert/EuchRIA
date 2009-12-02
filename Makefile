# Builds Euchria

SOURCES := $(wildcard $(EUCHRIA_ROOT)/src/*.mxml)
TARGETS := $(SOURCES:.mxml=.swf)
TARGETS := $(subst src,bin, $(TARGETS))

# If mxmlc is not in your path, update this variable to build correctly
MXMLC := mxmlc

all: $(TARGETS)

$(EUCHRIA_ROOT)/bin/%.swf : $(EUCHRIA_ROOT)/src/%.mxml
	@mkdir -p $(EUCHRIA_ROOT)/bin
	$(MXMLC) $< -o $@

clean: 
	rm -rf $(EUCHRIA_ROOT)/bin/*


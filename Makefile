DOC := draft-ietf-tsvwg-l4sops-06
XML := $(DOC).xml
TXT := $(DOC).txt
HTML := $(DOC).html

.DEFAULT_GOAL: $(TXT)

all: $(TXT) $(HTML)

$(TXT): $(XML) ; xml2rfc $<
$(HTML): $(XML) ; xml2rfc --html $<

clean: ; $(RM) $(TXT) $(HTML)

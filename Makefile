DOC := draft-white-tsvwg-l4sops-02
XML := $(DOC).xml
TXT := $(DOC).txt

.DEFAULT_GOAL: $(TXT)

$(TXT): $(XML) ; xml2rfc $<

clean: ; $(RM) $(TXT)

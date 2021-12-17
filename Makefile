# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

.PHONY: gettext Makefile
gettext:
	@$(SPHINXBUILD) -M gettext "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) -t gettext $(O)
	sphinx-intl update -p _build/gettext -l ca 

.PHONY: en 
en:
	@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) $(O)
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) -D language='$@' -t $@ $(O)
	mkdir -p _build/html/
	cp -r $(BUILDDIR)_en/html/ _build/html/

.PHONY: ca
ca:
	@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) $(O)
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) -D language='$@' -t $@ $(O)
	mkdir -p _build/html/ca
	cp -r $(BUILDDIR)_ca/html/ _build/html/ca/

.PHONY: all web
all: web
web: clean en ca
	@$(SPHINXBUILD) -M linkcheck "$(SOURCEDIR)" "$(BUILDDIR)_en" $(SPHINXOPTS) -D language='en' $(O)
	@$(SPHINXBUILD) -M linkcheck "$(SOURCEDIR)" "$(BUILDDIR)_ca" $(SPHINXOPTS) -D language='ca' -t ca $(O)

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


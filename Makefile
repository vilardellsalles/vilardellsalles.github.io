# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
export REQUESTS_CA_BUNDLE=${VIRTUAL_ENV}/cacert.pem

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

.PHONY: gettext Makefile
gettext:
	@$(SPHINXBUILD) -M gettext "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) -t gettext $(O)
	sphinx-intl update -p $(BUILDDIR)/gettext -l ca

.PHONY: clean
clean:
	@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)_en" $(SPHINXOPTS) $(O)
	@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)_ca" $(SPHINXOPTS) $(O)
	rm -rf $(BUILDDIR)/html
	mkdir -p $(BUILDDIR)/html/ca

.PHONY: en 
en:
	#@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) $(O)
	touch index.rst
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) -D language='$@' -t $@ $(O)
	jupyter nbconvert notebooks/PyDayBCN2022/PyDayBCN2022.ipynb --to slides
	# Copying to root for historical reasons only
	cp notebooks/PyDayBCN2022/PyDayBCN2022.slides.html $(BUILDDIR)_en/html/PyDayBCN2022.html
	mv notebooks/PyDayBCN2022/PyDayBCN2022.slides.html $(BUILDDIR)_en/html/posts/
	mkdir -p $(BUILDDIR)/html/
	cp -r $(BUILDDIR)_$@/html/ $(BUILDDIR)/html/

.PHONY: ca
ca:
	#@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) $(O)
	touch index.rst
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)_$@" $(SPHINXOPTS) -D language='$@' -t $@ $(O)
	mkdir -p $(BUILDDIR)/html/$@
	cp -r $(BUILDDIR)_$@/html/ $(BUILDDIR)/html/$@/

.PHONY: all web
all: web
web: clean en ca
	@$(SPHINXBUILD) -M linkcheck "$(SOURCEDIR)" "$(BUILDDIR)_en" $(SPHINXOPTS) -D language='en' $(O)
	@$(SPHINXBUILD) -M linkcheck "$(SOURCEDIR)" "$(BUILDDIR)_ca" $(SPHINXOPTS) -D language='ca' -t ca $(O)

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


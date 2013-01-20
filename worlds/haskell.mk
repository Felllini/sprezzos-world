.PHONY: cpphs
cpphs:$(CPPHS)_$(ARCH).deb
$(CPPHS): $(SPREZZ)/cpphs/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf cpphs-$(cpphs_UPVER).tar.gz $(TARARGS) $@

.PHONY: ghc
ghc:$(GHC)_$(ARCH).deb
$(GHC): $(SPREZZ)/ghc/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf ghc-$(ghc_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-ansi-terminal
haskell-ansi-terminal:$(HASKELLANSITERMINAL)_$(ARCH).deb
$(HASKELLANSITERMINAL): $(SPREZZ)/haskell-ansi-terminal/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf ansi-terminal-$(haskell-ansi-terminal_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-ansi-wl-pprint
haskell-ansi-wl-pprint:$(HASKELLANSIWLPPRINT)_$(ARCH).deb
$(HASKELLANSIWLPPRINT): $(SPREZZ)/haskell-ansi-wl-pprint/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf ansi-wl-pprint-$(haskell-ansi-wl-pprint_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-attoparsec
haskell-attoparsec:$(HASKELLATTOPARSEC)_$(ARCH).deb
$(HASKELLATTOPARSEC): $(SPREZZ)/haskell-attoparsec/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf attoparsec-$(haskell-attoparsec_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-base-unicode-symbols
haskell-base-unicode-symbols:$(HASKELLBASEUNICODESYMBOLS)_$(ARCH).deb
$(HASKELLBASEUNICODESYMBOLS): $(SPREZZ)/haskell-base-unicode-symbols/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf base-unicode-symbols-$(haskell-base-unicode-symbols_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-blaze-builder
haskell-blaze-builder:$(HASKELLBLAZEBUILDER)_$(ARCH).deb
$(HASKELLBLAZEBUILDER): $(SPREZZ)/haskell-blaze-builder/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf blaze-builder-$(haskell-blaze-builder_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-blaze-html
haskell-blaze-html:$(HASKELLBLAZEHTML)_$(ARCH).deb
$(HASKELLBLAZEHTML): $(SPREZZ)/haskell-blaze-html/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf blaze-html-$(haskell-blaze-html_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-blaze-markup
haskell-blaze-markup:$(HASKELLBLAZEMARKUP)_$(ARCH).deb
$(HASKELLBLAZEMARKUP): $(SPREZZ)/haskell-blaze-markup/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf blaze-markup-$(haskell-blaze-markup_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-conduit
haskell-conduit:$(HASKELLCONDUIT)_$(ARCH).deb
$(HASKELLCONDUIT): $(SPREZZ)/haskell-conduit/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf conduit-$(haskell-conduit_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-edit-distance
haskell-edit-distance:$(HASKELLEDITDISTANCE)_$(ARCH).deb
$(HASKELLEDITDISTANCE): $(SPREZZ)/haskell-edit-distance/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf edit-distance-$(haskell-edit-distance_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-extensible-exceptions
haskell-extensible-exceptions:$(HASKELLEXTENSIBLEEXCEPTIONS)_$(ARCH).deb
$(HASKELLEXTENSIBLEEXCEPTIONS): $(SPREZZ)/haskell-extensible-exceptions/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf extensible-exceptions-$(haskell-extensible-exceptions_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-failure
haskell-failure:$(HASKELLFAILURE)_$(ARCH).deb
$(HASKELLFAILURE): $(SPREZZ)/haskell-failure/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf failure-$(haskell-failure_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-hamlet
haskell-hamlet:$(HASKELLHAMLET)_$(ARCH).deb
$(HASKELLHAMLET): $(SPREZZ)/haskell-hamlet/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf hamlet-$(haskell-hamlet_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-hostname
haskell-hostname:$(HASKELLHOSTNAME)_$(ARCH).deb
$(HASKELLHOSTNAME): $(SPREZZ)/haskell-hostname/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf hostname-$(haskell-hostname_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-hspec
haskell-hspec:$(HASKELLHSPEC)_$(ARCH).deb
$(HASKELLHSPEC): $(SPREZZ)/haskell-hspec/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf hspec-$(haskell-hspec_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-hspec-expectations
haskell-hspec-expectations:$(HASKELLHSPECEXPECTATIONS)_$(ARCH).deb
$(HASKELLHSPECEXPECTATIONS): $(SPREZZ)/haskell-hspec-expectations/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf hspec-expectations-$(haskell-hspec-expectations_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-hunit
haskell-hunit:$(HASKELLHUNIT)_$(ARCH).deb
$(HASKELLHUNIT): $(SPREZZ)/haskell-hunit/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf HUnit-$(haskell-hunit_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-json
haskell-json:$(HASKELLJSON)_$(ARCH).deb
$(HASKELLJSON): $(SPREZZ)/haskell-json/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf json-$(haskell-json_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-lifted-base
haskell-lifted-base:$(HASKELLLIFTEDBASE)_$(ARCH).deb
$(HASKELLLIFTEDBASE): $(SPREZZ)/haskell-lifted-base/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf lifted-base-$(haskell-lifted-base_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-monad-control
haskell-monad-control:$(HASKELLMONADCONTROL)_$(ARCH).deb
$(HASKELLMONADCONTROL): $(SPREZZ)/haskell-monad-control/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf monad-control-$(haskell-monad-control_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-mtl
haskell-mtl:$(HASKELLMTL)_$(ARCH).deb
$(HASKELLMTL): $(SPREZZ)/haskell-mtl/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf mtl-$(haskell-mtl_UPVER).tar.gz $(TARARGS) $@
	
.PHONY: haskell-parsec
haskell-parsec:$(HASKELLPARSEC)_$(ARCH).deb
$(HASKELLPARSEC): $(SPREZZ)/haskell-parsec/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf parsec-$(haskell-parsec_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-quickcheck
haskell-quickcheck:$(HASKELLQUICKCHECK)_$(ARCH).deb
$(HASKELLQUICKCHECK): $(SPREZZ)/haskell-quickcheck/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf QuickCheck-$(haskell-quickcheck_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-random
haskell-random:$(HASKELLRANDOM)_$(ARCH).deb
$(HASKELLRANDOM): $(SPREZZ)/haskell-random/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf random-$(haskell-random_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-regex-base
haskell-regex-base:$(HASKELLREGEXBASE)_$(ARCH).deb
$(HASKELLREGEXBASE): $(SPREZZ)/haskell-regex-base/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf regex-base-$(haskell-regex-base_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-regex-posix
haskell-regex-posix:$(HASKELLREGEXPOSIX)_$(ARCH).deb
$(HASKELLREGEXPOSIX): $(SPREZZ)/haskell-regex-posix/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf regex-posix-$(haskell-regex-posix_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-resourcet
haskell-resourcet:$(HASKELLRESOURCET)_$(ARCH).deb
$(HASKELLRESOURCET): $(SPREZZ)/haskell-resourcet/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf resourcet-$(haskell-resourcet_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-semigroups
haskell-semigroups:$(HASKELLSEMIGROUPS)_$(ARCH).deb
$(HASKELLSEMIGROUPS): $(SPREZZ)/haskell-semigroups/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf semigroups-$(haskell-semigroups_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-shakespeare
haskell-shakespeare:$(HASKELLSHAKESPEARE)_$(ARCH).deb
$(HASKELLSHAKESPEARE): $(SPREZZ)/haskell-shakespeare/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf shakespeare-$(haskell-shakespeare_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-silently
haskell-silently:$(HASKELLSILENTLY)_$(ARCH).deb
$(HASKELLSILENTLY): $(SPREZZ)/haskell-silently/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf silently-$(haskell-silently_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-syb
haskell-syb:$(HASKELLSYB)_$(ARCH).deb
$(HASKELLSYB): $(SPREZZ)/haskell-syb/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf syb-$(haskell-syb_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-test-framework
haskell-test-framework:$(HASKELLTESTFRAMEWORK)_$(ARCH).deb
$(HASKELLTESTFRAMEWORK): $(SPREZZ)/haskell-test-framework/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf test-framework-$(haskell-test-framework_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-test-framework-hunit
haskell-test-framework-hunit:$(HASKELLTESTFRAMEWORKHUNIT)_$(ARCH).deb
$(HASKELLTESTFRAMEWORKHUNIT): $(SPREZZ)/haskell-test-framework-hunit/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf test-framework-hunit-$(haskell-test-framework-hunit_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-test-framework-quickcheck2
haskell-test-framework-quickcheck2:$(HASKELLTESTFRAMEWORKQUICKCHECK2)_$(ARCH).deb
$(HASKELLTESTFRAMEWORKQUICKCHECK2): $(SPREZZ)/haskell-test-framework-quickcheck2/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf test-framework-quickcheck2-$(haskell-test-framework-quickcheck2_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-testpack
haskell-testpack:$(HASKELLTESTPACK)_$(ARCH).deb
$(HASKELLTESTPACK): $(SPREZZ)/haskell-testpack/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf testpack-$(haskell-testpack_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-text
haskell-text:$(HASKELLTEXT)_$(ARCH).deb
$(HASKELLTEXT): $(SPREZZ)/haskell-text/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf text-$(haskell-text_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-transformers
haskell-transformers:$(HASKELLTRANSFORMERS)_$(ARCH).deb
$(HASKELLTRANSFORMERS): $(SPREZZ)/haskell-transformers/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf transformers-$(haskell-transformers_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-transformers-base
haskell-transformers-base:$(HASKELLTRANSFORMERSBASE)_$(ARCH).deb
$(HASKELLTRANSFORMERSBASE): $(SPREZZ)/haskell-transformers-base/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf transformers-base-$(haskell-transformers-base_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-void
haskell-void:$(HASKELLVOID)_$(ARCH).deb
$(HASKELLVOID): $(SPREZZ)/haskell-void/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf void-$(haskell-void_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-xml
haskell-xml:$(HASKELLXML)_$(ARCH).deb
$(HASKELLXML): $(SPREZZ)/haskell-xml/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xml-$(haskell-xml_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-xml-conduit
haskell-xml-conduit:$(HASKELLXMLCONDUIT)_$(ARCH).deb
$(HASKELLXMLCONDUIT): $(SPREZZ)/haskell-xml-conduit/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xml-conduit-$(haskell-xml-conduit_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-xml-hamlet
haskell-xml-hamlet:$(HASKELLXMLHAMLET)_$(ARCH).deb
$(HASKELLXMLHAMLET): $(SPREZZ)/haskell-xml-hamlet/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xml-hamlet-$(haskell-xml-hamlet_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-xml-types
haskell-xml-types:$(HASKELLXMLTYPES)_$(ARCH).deb
$(HASKELLXMLTYPES): $(SPREZZ)/haskell-xml-types/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xml-types-$(haskell-xml-types_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-zlib
haskell-zlib:$(HASKELLZLIB)_$(ARCH).deb
$(HASKELLZLIB): $(SPREZZ)/haskell-zlib/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf zlib-$(haskell-zlib_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-zlib-bindings
haskell-zlib-bindings:$(HASKELLZLIBBINDINGS)_$(ARCH).deb
$(HASKELLZLIBBINDINGS): $(SPREZZ)/haskell-zlib-bindings/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf zlib-bindings-$(haskell-zlib-bindings_UPVER).tar.gz $(TARARGS) $@

.PHONY: haskell-zlib-conduit
haskell-zlib-conduit:$(HASKELLZLIBCONDUIT)_$(ARCH).deb
$(HASKELLZLIBCONDUIT): $(SPREZZ)/haskell-zlib-conduit/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf zlib-conduit-$(haskell-zlib-conduit_UPVER).tar.gz $(TARARGS) $@

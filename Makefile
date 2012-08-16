.DELETE_ON_ERROR:
.PHONY: world all clean
.DEFAULT_GOAL:=all

all: world

DEBKEY:=9978711C
DEBFULLNAME:='nick black'
DEBEMAIL:=nick.black@sprezzatech.com

PACKAGES:=growlight omphalos fbterm valgrind sprezzos-grub2theme fbv \
	fonts-adobe-sourcesanspro mplayer

SPREZZ:=packaging

include $(addprefix sprezzos-world/,$(PACKAGES))

sprezzos-world/%: $(SPREZZ)/%/debian/changelog
	@[ -d $(@D) ] || mkdir -p $(@D)
	( echo "# Automatically generated from $<" && \
	 echo -n "$(@F)_VERSION:=" && \
	 dpkg-parsechangelog -l$< | grep-dctrl -ensVersion -FSource . |\
	 cut -d: -f2- ) > $@

GROWLIGHT=growlight_$(growlight_VERSION)
OMPHALOS=omphalos_$(omphalos_VERSION)
VALGRIND=valgrind_$(valgrind_VERSION)
MPLAYER=mplayer_$(mplayer_VERSION)
FBTERM=fbterm_$(fbterm_VERSION)
FBV=fbv_$(fbv_VERSION)
GRUBTHEME=sprezzos-grub2theme_$(sprezzos-grub2theme_VERSION)
ADOBE=fonts-adobe-sourcesanspro_$(fonts-adobe-sourcesanspro_VERSION)

DEBS:=$(GROWLIGHT) $(OMPHALOS) $(GRUBTHEME) $(VALGRIND) $(ADOBE) \
	$(MPLAYER)
UDEBS:=$(FBV)
DUPUDEBS:=$(GROWLIGHT) $(FBTERM)

DEBS:=$(addsuffix .deb,$(DEBS))
UDEBS:=$(addsuffix .udeb,$(UDEBS))

world: $(DEBS) $(UDEBS)

# FIXME tarball generation is broken for packages with hyphens in their names
%.udeb %.deb: %
	{ [ ! -e $</configure.in ] && [ ! -e $</configure.ac ] ; } || \
		{ cd $< && autoreconf -fi ; }
	tar cjf $(shell echo $< | cut -d- -f1).orig.tar.bz2 $< --exclude=.git --exclude=debian
	cp -r $(SPREZZ)/$(shell echo $@ | cut -d_ -f1)/debian $@
	cd $< && apt-get -y build-dep $(shell echo $@ | cut -d_ -f1) || true # source package might not exist
	cd $< && dpkg-buildpackage -k$(DEBKEY)

.PHONY: growlight
growlight: $(GROWLIGHT).deb
$(GROWLIGHT): $(SPREZZ)/growlight/debian/changelog
	git clone https://github.com/dankamongmen/growlight.git $@
	cp -r $(<D) $@/

.PHONY: omphalos
omphalos:$(OMPHALOS).deb
$(OMPHALOS): $(SPREZZ)/omphalos/debian/changelog
	git clone https://github.com/dankamongmen/omphalos.git $@
	cp -r $(<D) $@/

.PHONY: fbv
fbv:$(FBV).udeb
$(FBV): $(SPREZZ)/fbv/debian/changelog
	git clone git://repo.or.cz/fbv.git $@

.PHONY: fbterm
fbterm:$(FBTERM).deb
$(FBTERM): $(SPREZZ)/fbterm/debian/changelog
	git clone https://github.com/dankamongmen/nfbterm.git $@
	cp -r $(<D) $@/

.PHONY: mplayer
mplayer:$(MPLAYER).deb
$(MPLAYER): $(SPREZZ)/mplayer/debian/changelog
	svn co svn://svn.mplayerhq.hu/mplayer/trunk $@

.PHONY: valgrind
valgrind:$(VALGRIND).deb
$(VALGRIND): $(SPREZZ)/valgrind/debian/changelog
	svn co svn://svn.valgrind.org/valgrind/trunk $@
	cp -r $(<D) $@/

.PHONY: grubtheme
sprezzos-grub2theme:$(GRUBTHEME).deb
$(GRUBTHEME): $(SPREZZ)/sprezzos-grub2theme/debian/changelog
	mkdir -p $@
	cp -r $(SPREZZ)/sprezzos-grub2theme/images $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) SourceSansPro_FontsOnly-1.033.zip
SourceSansPro_FontsOnly-1.033.zip:
	wget -nc http://sourceforge.net/projects/sourcesans.adobe/files/SourceSansPro_FontsOnly-1.033.zip -O$@

SANSPRO:=SourceSansPro_FontsOnly-1.033
.PHONY: adobe
adobe:$(ADOBE).deb
$(ADOBE): $(SPREZZ)/fonts-adobe-sourcesanspro/debian/changelog $(SANSPRO).zip
	unzip $(SANSPRO).zip 
	mv $(SANSPRO) $@
	cp -r $(<D) $@/

clean:
	rm -rf sprezzos-world $(FETCHED)
	rm -rf $(VALGRIND) $(GRUBTHEME) $(OMPHALOS) $(GROWLIGHT) $(FBV)
	rm -rf $(ADOBE) $(FBTERM)
	rm -rf $(DEBS) $(UDEBS)

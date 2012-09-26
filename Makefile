.DELETE_ON_ERROR:
.PHONY: world all clean
.DEFAULT_GOAL:=all

all: world

ARCH:=amd64

DEBKEY:=9978711C
DEBFULLNAME:='nick black'
DEBEMAIL:=nick.black@sprezzatech.com

PACKAGES:=growlight fwts util-linux linux-latest libpng libjpeg-turbo \
	omphalos sudo systemd librsvg grub-pc xmlstarlet \
	conpalette valgrind strace splitvt xbmc sprezzos-grub2theme apitrace \
	fbv fonts-adobe-sourcesanspro mplayer nethorologist fbterm

SPREZZ:=packaging

include $(addprefix sprezzos-world/,$(PACKAGES))

sprezzos-world/%: $(SPREZZ)/%/debian/changelog
	@[ -d $(@D) ] || mkdir -p $(@D)
	( echo "# Automatically generated from $<" && \
	 echo -n "$(@F)_VERSION:=" && \
	 dpkg-parsechangelog -l$< | grep-dctrl -ensVersion -FSource . |\
	 cut -d: -f2- ) > $@

# experimental new way
GRUBPC:=grub-pc_$(grub-pc_VERSION)
GRUBUP:=grub-$(shell echo $(grub-pc_VERSION) | cut -d- -f1)

GROWLIGHT:=growlight_$(growlight_VERSION)
XMLSTARLET:=xmlstarlet-$(xmlstarlet_VERSION)
LIBRSVG:=librsvg-$(librsvg_VERSION)
LINUXLATEST:=linux-latest_$(linux-latest_VERSION)
UTILLINUX:=util-linux_$(util-linux_VERSION)
LIBPNG:=libpng_$(libpng_VERSION)
LIBJPEGTURBO:=libjpeg-turbo_$(libjpeg-turbo_VERSION)
OMPHALOS:=omphalos_$(omphalos_VERSION)
FWTS:=fwts_$(fwts_VERSION)
SYSTEMD:=systemd_$(systemd_VERSION)
VALGRIND:=valgrind_$(valgrind_VERSION)
SUDO:=sudo_$(sudo_VERSION)
XBMC:=xbmc_$(xbmc_VERSION)
NETHOROLOGIST:=nethorologist_$(nethorologist_VERSION)
MPLAYER:=mplayer_$(mplayer_VERSION)
FBTERM:=fbterm_$(fbterm_VERSION)
STRACE:=strace_$(strace_VERSION)
SPLITVT:=splitvt_$(splitvt_VERSION)
FBV:=fbv_$(fbv_VERSION)
APITRACE:=apitrace_$(apitrace_VERSION)
GRUBTHEME:=sprezzos-grub2theme_$(sprezzos-grub2theme_VERSION)
ADOBE:=fonts-adobe-sourcesanspro_$(fonts-adobe-sourcesanspro_VERSION)
CONPALETTE:=conpalette_$(conpalette_VERSION)

DEBS:=$(GROWLIGHT) $(LIBRSVG) $(GRUBPC) $(LIBPNG) $(XMLSTARLET) $(FWTS) \
	$(UTILLINUX) $(LINUXLATEST) $(LIBJPEGTURBO) $(OMPHALOS) $(SUDO) \
	$(GRUBTHEME) $(VALGRIND) $(ADOBE) $(STRACE) $(SPLITVT) \
	$(NETHOROLOGIST) $(XBMC) $(MPLAYER) $(CONPALETTE) $(APITRACE) \
	$(SYSTEMD)
UDEBS:=$(FBV)
DUPUDEBS:=$(GROWLIGHT) $(FBTERM) $(CONPALETTE) $(STRACE) $(SPLITVT) \
	$(NETHOROLOGIST) $(FWTS) $(UTILLINUX)

DSCS:=$(addsuffix .dsc,$(DEBS) $(UDEBS))
CHANGES:=$(addsuffix .changes,$(DEBS) $(UDEBS))

DEBS:=$(addsuffix _$(ARCH).deb,$(DEBS))
UDEBS:=$(addsuffix _$(ARCH).udeb,$(UDEBS))

world: $(DEBS) $(UDEBS)

%.udeb %.deb: %
	{ [ ! -e $</configure.in ] && [ ! -e $</configure.ac ] ; } || \
		{ [ -e $</configure ] || [ -e $</bootstrap ] ; } || \
		{ cd $< && autoreconf -fi ; }
	tar cjf $(shell echo $< | sed -e 's/-SprezzOS.*//' | sed -e 's/\(.*\)-/\1_/').orig.tar.bz2 $< --exclude-vcs --exclude=\*/debian/
	cd $< && apt-get -y build-dep $(shell echo $@ | cut -d_ -f1) || true # source package might not exist
	cd $< && dpkg-buildpackage -k$(DEBKEY)

.PHONY: growlight
growlight: $(GROWLIGHT).deb
$(GROWLIGHT): $(SPREZZ)/growlight/debian/changelog
	git clone https://github.com/dankamongmen/growlight.git $@
	cp -r $(<D) $@/

.PHONY: xmlstarlet
xmlstarlet:$(XMLSTARLET).deb
$(XMLSTARLET): $(SPREZZ)/xmlstarlet/debian/changelog
	git clone https://github.com/dankamongmen/xmlstarlet.git $@
	cp -r $(<D) $@/

.PHONY: nethorologist
nethorologist: $(NETHOROLOGIST).deb
$(NETHOROLOGIST): $(SPREZZ)/nethorologist/debian/changelog
	git clone https://github.com/Sprezzatech/nethorologist.git $@
	cp -r $(<D) $@/

.PHONY: strace
strace: $(STRACE).deb
$(STRACE): $(SPREZZ)/strace/debian/changelog
	git clone git://strace.git.sourceforge.net/gitroot/strace/strace $@
	cp -r $(<D) $@/

# Ubuntu native packages ship their own debian/
.PHONY: fwts
fwts:$(FWTS).deb
$(FWTS): $(SPREZZ)/fwts/debian/changelog
	git clone git://kernel.ubuntu.com/hwe/fwts $@
	rm -rf $@/debian
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

.PHONY: apitrace
apitrace:$(APITRACE).deb
$(APITRACE): $(SPREZZ)/apitrace/debian/changelog
	git clone https://github.com/apitrace/apitrace.git $@
	cp -r $(<D) $@/

.PHONY: xbmc
xbmc:$(XBMC).deb
$(XBMC): $(SPREZZ)/xbmc/debian/changelog
	git clone git://github.com/xbmc/xbmc.git $@
	cp -r $(<D) $@/

.PHONY: mplayer
mplayer:$(MPLAYER).deb
$(MPLAYER): $(SPREZZ)/mplayer/debian/changelog
	svn co svn://svn.mplayerhq.hu/mplayer/trunk $@
	rm -rf $@/debian
	cp -r $(<D) $@/

.PHONY: linux-latest
linux-latest:$(LINUXLATEST).deb
$(LINUXLATEST): $(SPREZZ)/linux-latest/debian/changelog
	mkdir $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) util-linux_2.20.1.tar.gz
util-linux-2.20.1.tar.gz:
	wget -nc -O$@ ftp://ftp.kernel.org/pub/linux/utils/util-linux/v2.20/util-linux-2.20.1.tar.gz

.PHONY: util-linux
util-linux:$(UTILLINUX).deb
$(UTILLINUX): $(SPREZZ)/util-linux/debian/changelog util-linux-2.20.1.tar.gz
	mkdir $@
	tar xzvf util-linux-2.20.1.tar.gz --strip-components=1 -C $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) libjpeg-turbo-1.2.1.tar.gz
libjpeg-turbo-1.2.1.tar.gz:
	wget -nc -O$@ http://sourceforge.net/projects/libjpeg-turbo/files/1.2.1/libjpeg-turbo-1.2.1.tar.gz/download

.PHONY: libjpeg-turbo
libjpeg-turbo:$(LIBJPEGTURBO).deb
$(LIBJPEGTURBO): $(SPREZZ)/libjpeg-turbo/debian/changelog libjpeg-turbo-1.2.1.tar.gz
	mkdir $@
	tar xzvf libjpeg-turbo-1.2.1.tar.gz --strip-components=1 -C $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) libpng-1.5.12.tar.bz2
libpng-1.5.12.tar.bz2:
	wget -nc -O$@ http://sourceforge.net/projects/libpng/files/libpng15/1.5.12/libpng-1.5.12.tar.bz2/download

.PHONY: libpng
libpng:$(LIBPNG).deb
$(LIBPNG): $(SPREZZ)/libpng/debian/changelog libpng-1.5.12.tar.bz2
	mkdir $@
	tar xjvf libpng-1.5.12.tar.bz2 --strip-components=1 -C $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) sudo-1.8.5p3.tar.gz
sudo-1.8.5p3.tar.gz:
	wget -nc -O$@ http://www.gratisoft.us/sudo/dist/sudo-1.8.5p3.tar.gz

.PHONY: sudo
sudo:$(SUDO).deb
$(SUDO): $(SPREZZ)/sudo/debian/changelog sudo-1.8.5p3.tar.gz
	mkdir $@
	tar xzvf sudo-1.8.5p3.tar.gz --strip-components=1 -C $@
	cp -r $(<D) $@/

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

FETCHED:=$(FETCHED) http://www.freedesktop.org/software/systemd/systemd-189.tar.xz
$(SYSTEMD).tar.xz:
	wget -nc -O$@ http://www.freedesktop.org/software/systemd/systemd-189.tar.xz

.PHONY: systemd
systemd:$(SYSTEMD).deb
$(SYSTEMD): $(SPREZZ)/systemd/debian/changelog $(SYSTEMD).tar.xz
	mkdir -p $@
	tar xJvf $(SYSTEMD).tar.xz --strip-components=1 -C $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) App-ConPalette-0.1.5.tar.gz
App-ConPalette-0.1.5.tar.gz:
	wget -nc -O$@ http://search.cpan.org/CPAN/authors/id/H/HI/HINRIK/App-ConPalette-0.1.5.tar.gz

FETCHED:=$(FETCHED) SourceSansPro_FontsOnly-1.033.zip
SourceSansPro_FontsOnly-1.033.zip:
	wget -nc -O$@ http://sourceforge.net/projects/sourcesans.adobe/files/SourceSansPro_FontsOnly-1.033.zip

FETCHED:=$(FETCHED) $(GRUBUP).tar.xz
$(GRUBUP).tar.xz:
	wget -nc -O$@ http://ftp.gnu.org/gnu/grub/$(GRUBUP).tar.xz

.PHONY: grub-pc
grub-pc:$(GRUBPC).deb
$(GRUBPC): $(SPREZZ)/grub-pc/debian/changelog $(GRUBUP).tar.xz
	mkdir -p $@
	tar xJvf $(GRUBUP).tar.xz --strip-components=1 -C $@
	cp -r $(<D) $@/

FETCHED:=$(FETCHED) $(LIBRSVG).tar.xz
$(LIBRSVG).tar.xz:
	wget -nc -O$@ http://ftp.gnome.org/pub/gnome/sources/librsvg/2.36/librsvg-2.36.3.tar.xz

.PHONY: librsvg
librsvg:$(LIBRSVG).deb
$(LIBRSVG): $(SPREZZ)/librsvg/debian/changelog $(LIBRSVG).tar.xz
	mkdir -p $@
	tar xJvf $(LIBRSVG).tar.xz --strip-components=1 -C $@
	cp -r $(<D) $@/

CONPAL:=App-ConPalette-0.1.5
.PHONY: conpalette
conpalette:$(CONPALETTE).deb
$(CONPALETTE): $(SPREZZ)/conpalette/debian/changelog $(CONPAL).tar.gz
	tar xzvf $(CONPAL).tar.gz
	mv $(CONPAL) $@
	cp -r $(<D) $@/

SANSPRO:=SourceSansPro_FontsOnly-1.033
.PHONY: adobe
adobe:$(ADOBE).deb
$(ADOBE): $(SPREZZ)/fonts-adobe-sourcesanspro/debian/changelog $(SANSPRO).zip
	unzip $(SANSPRO).zip 
	mv $(SANSPRO) $@
	cp -r $(<D) $@/

clean:
	rm -rf sprezzos-world $(FETCHED) $(DEBS) $(UDEBS) $(DSCS) $(CHANGES)
	rm -rf $(VALGRIND) $(GRUBTHEME) $(OMPHALOS) $(GROWLIGHT) $(FBV)
	rm -rf $(ADOBE) $(FBTERM) $(CONPALETTE) $(APITRACE) $(SUDO) $(LIBPNG)
	rm -rf $(DEBS) $(UDEBS) $(LIBJPEGTURBO) $(STRACE) $(SPLITVT)
	rm -rf $(LINUXLATEST) $(NETHOROLOGIST) $(FWTS) $(UTILLINUX) $(SYSTEMD)
	rm -rf $(LIBRSVG) $(GRUBPC) $(XMLSTARLET)

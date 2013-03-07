.PHONY: pidgin-facebookchat
pidgin-facebookchat:$(PIDGINFACEBOOKCHAT)_$(ARCH).deb
$(PIDGINFACEBOOKCHAT): $(SPREZZ)/pidgin-facebookchat/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf pidgin-facebookchat-source-$(pidgin-facebookchat_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: icoutils
icoutils:$(ICOUTILS)_$(ARCH).deb
$(ICOUTILS): $(SPREZZ)/icoutils/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf icoutils-$(icoutils_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: model-builder
model-builder:$(MODELBUILDER)_$(ARCH).deb
$(MODELBUILDER): $(SPREZZ)/model-builder/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf Model-Builder-$(model-builder_UPVER).tar.gz $(TARARGS) $@

#.PHONY: xbmc
#xbmc:$(XBMC)_$(ARCH).deb
#$(XBMC): $(SPREZZ)/xbmc/debian/changelog
#	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
#	git clone git://github.com/xbmc/xbmc.git $@
#	tar cJf xbmc-$(xbmc_UPVER).tar.xz $@ --exclude-vcs
#	ln -sf xbmc-$(xbmc_UPVER).tar.xz xbmc_$(xbmc_UPVER).orig.tar.xz
#	cp -r $(<D) $@/

.PHONY: xbmc
xbmc:$(XBMC)_$(ARCH).deb
$(XBMC): $(SPREZZ)/xbmc/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xbmc_$(xbmc_UPVER).orig.tar.gz $(TARARGS) $@

.PHONY: agg
agg:$(AGG)_$(ARCH).deb
$(AGG): $(SPREZZ)/agg/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf agg-$(agg_UPVER).tar.gz $(TARARGS) $@

.PHONY: plotutils
plotutils:$(PLOTUTILS)_$(ARCH).deb
$(PLOTUTILS): $(SPREZZ)/plotutils/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf plotutils-$(plotutils_UPVER).tar.gz $(TARARGS) $@

.PHONY: ball
ball:$(BALL)_$(ARCH).deb
$(BALL): $(SPREZZ)/ball/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf ball_$(ball_UPVER).orig.tar.bz2 $(TARARGS) $@

.PHONY: bogl
bogl:$(BOGL)_$(ARCH).deb
$(BOGL): $(SPREZZ)/bogl/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf bogl-$(bogl_UPVER).tar.gz $(TARARGS) $@

.PHONY: tesseract
tesseract:$(TESSERACT)_$(ARCH).deb
$(TESSERACT): $(SPREZZ)/tesseract/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf tesseract-ocr-$(tesseract_UPVER).tar.gz $(TARARGS) $@

.PHONY: geeqie
geeqie:$(GEEQIE)_$(ARCH).deb
$(GEEQIE): $(SPREZZ)/geeqie/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf geeqie-$(geeqie_UPVER).tar.gz $(TARARGS) $@

.PHONY: xpaint
xpaint:$(XPAINT)_$(ARCH).deb
$(XPAINT): $(SPREZZ)/xpaint/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf xpaint-$(xpaint_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: xaw3d
xaw3d:$(XAW3D)_$(ARCH).deb
$(XAW3D): $(SPREZZ)/xaw3d/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf libXaw3d-$(xaw3d_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: ufraw
ufraw:$(UFRAW)_$(ARCH).deb
$(UFRAW): $(SPREZZ)/ufraw/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf ufraw-$(ufraw_UPVER).tar.gz $(TARARGS) $@

.PHONY: libxcm
libxcm:$(LIBXCM)_$(ARCH).deb
$(LIBXCM): $(SPREZZ)/libxcm/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf libXcm-$(libxcm_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: oyranos
oyranos:$(OYRANOS)_$(ARCH).deb
$(OYRANOS): $(SPREZZ)/oyranos/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf oyranos-$(oyranos_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: cinepaint
cinepaint:$(CINEPAINT)_$(ARCH).deb
$(CINEPAINT): $(SPREZZ)/cinepaint/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf cinepaint-$(cinepaint_UPVER).tar.gz $(TARARGS) $@

.PHONY: gnokii
gnokii:$(GNOKII)_$(ARCH).deb
$(GNOKII): $(SPREZZ)/gnokii/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf gnokii-$(gnokii_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: makehuman
makehuman:$(MAKEHUMAN)_$(ARCH).deb
$(MAKEHUMAN): $(SPREZZ)/makehuman/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf makehuman-$(makehuman_UPVER).tar.gz $(TARARGS) $@

.PHONY: k3d
k3d:$(K3D)_$(ARCH).deb
$(K3D): $(SPREZZ)/k3d/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf k3d-source-$(k3d_UPVER).tar.bz2 $(TARARGS) $@

.PHONY: ledit
ledit:$(LEDIT)_$(ARCH).deb
$(LEDIT): $(SPREZZ)/ledit/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf ledit-$(ledit_UPVER).tgz $(TARARGS) $@

.PHONY: smuxi
smuxi:$(SMUXI)_$(ARCH).deb
$(SMUXI): $(SPREZZ)/smuxi/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf smuxi-$(smuxi_UPVER).tar.gz $(TARARGS) $@

.PHONY: nini
nini:$(NINI)_$(ARCH).deb
$(NINI): $(SPREZZ)/nini/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf nini-$(nini_UPVER).tar.gz $(TARARGS) $@

.PHONY: libvncserver
libvncserver:$(LIBVNCSERVER)_$(ARCH).deb
$(LIBVNCSERVER): $(SPREZZ)/libvncserver/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf LibVNCServer-$(libvncserver_UPVER).tar.gz $(TARARGS) $@

.PHONY: desktop-file-utils
desktop-file-utils:$(DESKTOPFILEUTILS)_$(ARCH).deb
$(DESKTOPFILEUTILS): $(SPREZZ)/desktop-file-utils/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xJvf desktop-file-utils-$(desktop-file-utils_UPVER).tar.xz $(TARARGS) $@

.PHONY: freqtweak
freqtweak:$(FREQTWEAK)_$(ARCH).deb
$(FREQTWEAK): $(SPREZZ)/freqtweak/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf freqtweak-$(freqtweak_UPVER).tar.gz $(TARARGS) $@

.PHONY: xscreensaver
xscreensaver:$(XSCREENSAVER)_$(ARCH).deb
$(XSCREENSAVER): $(SPREZZ)/xscreensaver/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xscreensaver-$(xscreensaver_UPVER).tar.gz $(TARARGS) $@

.PHONY: gle
gle:$(GLE)_$(ARCH).deb
$(GLE): $(SPREZZ)/gle/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf gle-$(gle_UPVER).tar.gz $(TARARGS) $@

.PHONY: xloadimage
xloadimage:$(XLOADIMAGE)_$(ARCH).deb
$(XLOADIMAGE): $(SPREZZ)/xloadimage/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf xloadimage_$(xloadimage_UPVER).orig.tar.gz $(TARARGS) $@

.PHONY: libxaw3dxft
libxaw3dxft:$(LIBXAW3DXFT)_$(ARCH).deb
$(LIBXAW3DXFT): $(SPREZZ)/libxaw3dxft/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xjvf libxaw3dxft_$(libxaw3dxft_UPVER).orig.tar.bz2 $(TARARGS) $@

.PHONY: fltk1.1
fltk1.1:$(FLTK1.1)_$(ARCH).deb
$(FLTK1.1): $(SPREZZ)/fltk1.1/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf fltk1.1_$(fltk1.1_UPVER).orig.tar.gz $(TARARGS) $@

.PHONY: openms
openms:$(OPENMS)_$(ARCH).deb
$(OPENMS): $(SPREZZ)/openms/debian/changelog
	mkdir $@
	cp -r $(<D) $@
	cd $@ && uscan --force-download --download-current-version
	tar xzvf openms_$(openms_UPVER).orig.tar.gz $(TARARGS) $@


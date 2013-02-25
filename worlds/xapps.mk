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


.PHONY: kdeartwork
kdeartwork:$(KDEARTWORK)_$(ARCH).deb
$(KDEARTWORK): $(SPREZZ)/kdeartwork/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xJvf kdeartwork_$(kdeartwork_UPVER).orig.tar.xz $(TARARGS) $@

.PHONY: kde-baseapps
kde-baseapps:$(KDEBASEAPPS)_$(ARCH).deb
$(KDEBASEAPPS): $(SPREZZ)/kde-baseapps/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xJvf kde-baseapps_$(kde-baseapps_UPVER).orig.tar.xz $(TARARGS) $@

.PHONY: oxygen-icons
oxygen-icons:$(OXYGENICONS)_$(ARCH).deb
$(OXYGENICONS): $(SPREZZ)/oxygen-icons/debian/changelog
	mkdir $@
	cp -r $(<D) $@/
	cd $@ && uscan --force-download --download-current-version
	tar xJvf oxygen-icons-$(oxygen-icons_UPVER).tar.xz $(TARARGS) $@

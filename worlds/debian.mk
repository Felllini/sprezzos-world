# Native packages (those containing their own source)
.PHONY: anna
anna:$(ANNA)_$(ARCH).udeb
$(ANNA): $(SPREZZ)/anna/debian/changelog
	cp -r $(<D)/.. $@

.PHONY: base-files
base-files:$(BASEFILES)_$(ARCH).deb
$(BASEFILES): $(SPREZZ)/base-files/debian/changelog
	cp -r $(<D)/.. $@
	tar cJvf base-files_$(base-files_UPVER).orig.tar.xz $@ --exclude-vcs --exclude=debian

.PHONY: cdebconf
cdebconf:$(CDEBCONF)_$(ARCH).deb
$(CDEBCONF): $(SPREZZ)/cdebconf/debian/changelog
	cp -r $(<D)/.. $@
	tar cJvf cdebconf_$(cdebconf_UPVER).orig.tar.xz $@ --exclude-vcs --exclude=debian

.PHONY: devscripts
devscripts:$(DEVSCRIPTS)_$(ARCH).deb
$(DEVSCRIPTS): $(SPREZZ)/devscripts/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf devscripts_$(devscripts_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: dpkg
dpkg:$(DPKG)_$(ARCH).deb
$(DPKG): $(SPREZZ)/dpkg/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf dpkg_$(dpkg_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: libept
libept:$(LIBEPT)_$(ARCH).deb
$(LIBEPT): $(SPREZZ)/libept/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf libept_$(libept_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: meta-gnome
meta-gnome:$(METAGNOME)_$(ARCH).deb
$(METAGNOME): $(SPREZZ)/meta-gnome/debian/changelog
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf meta-gnome_$(meta-gnome_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: meta-kde
meta-kde:$(metakde)_$(ARCH).deb
$(metakde): $(SPREZZ)/meta-kde/debian/changelog
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf meta-kde_$(meta-kde_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: python-apt
python-apt:$(PYTHONAPT)_$(ARCH).deb
$(PYTHONAPT): $(SPREZZ)/python-apt/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf python-apt_$(python-apt_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: python-central
python-central:$(PYTHONCENTRAL)_$(ARCH).deb
$(PYTHONCENTRAL): $(SPREZZ)/python-central/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf python-central_$(python-central_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: python-support
python-support:$(PYTHONSUPPORT)_$(ARCH).deb
$(PYTHONSUPPORT): $(SPREZZ)/python-support/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf python-support_$(python-support_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@

.PHONY: sensible-utils
sensible-utils:$(SENSIBLEUTILS)_$(ARCH).deb
$(SENSIBLEUTILS): $(SPREZZ)/sensible-utils/debian/changelog
	@[ ! -e $@ ] || { echo "Removing $@..." && rm -rf $@ ; }
	cp -r $(<D)/.. $@
	rm -rf $@/debian
	tar cJvf sensible-utils_$(sensible-utils_UPVER).orig.tar.xz $@ --exclude-vcs
	cp -r $(<D) $@


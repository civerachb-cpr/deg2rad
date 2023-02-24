#!/bin/bash

sudo checkinstall -D \
	--pkgname deg2rad \
	--pkgversion 0.2.1 \
	--pkgrelease 1 \
	--pkglicense bsd \
	--arch all \
	--pkggroup devel \
	--maintainer civerachb@clearpathrobotics.com \
	--pkgsource https://github.com/civerachb-cpr/deg2rad \
	--provides deg2rad,rad2deg \
	--install ./install.sh


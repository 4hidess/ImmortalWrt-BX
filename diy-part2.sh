#!/bin/bash

# Navigate to the package directory
cd ./openwrt/package

# Add custom packages by cloning the repositories
git clone --depth=1 https://github.com/immortalwrt/luci luci
git clone --depth=1 https://github.com/immortalwrt/packages packages
git clone --depth=1 https://github.com/intannajwa/joss.git joss
git clone --depth=1 https://github.com/FUjr/modem_feeds.git modem_feeds
git clone --depth=1 https://github.com/intannajwa/quectel_CM_5G_M.git quectel_CM_5G_M
git clone --depth=1 https://github.com/solomonricky/luci-app-modeminfo.git luci-app-modeminfo
git clone --depth=1 https://github.com/4IceG/luci-app-3ginfo-lite.git luci-app-3ginfo-lite
git clone --depth=1 https://github.com/4IceG/luci-app-atcommands.git luci-app-atcommands
git clone --depth=1 https://github.com/4IceG/luci-app-modemband.git luci-app-modemband
git clone --depth=1 https://github.com/4IceG/luci-app-sms-tool-js.git luci-app-sms-tool-js
git clone --depth=1 https://github.com/gSpotx2f/luci-app-internet-detector.git luci-app-internet-detector
git clone --depth=1 https://github.com/4IceG/luci-app-irqbalance.git luci-app-irqbalance

# Add new luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone -b dev --depth 1 https://github.com/vernesong/OpenClash.git /tmp/OpenClash
mv /tmp/OpenClash/luci-app-openclash package/

# Navigate to the openwrt directory to update and install feeds
cd ./openwrt


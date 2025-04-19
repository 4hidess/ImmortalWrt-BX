#!/bin/bash

# Navigate to the package directory
cd package

# Add new luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone -b dev --depth 1 https://github.com/vernesong/OpenClash.git /tmp/OpenClash
mv /tmp/OpenClash/luci-app-openclash package/




#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 修改主机名称
# sed -i 's/ImmortalWrt/K2P-A2/g' package/base-files/files/bin/config_generate

# 修改默认wifi名称ssid为tymishop
# sed -i 's/ssid=OpenWrt/ssid=tymishop/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#开启MU-MIMO
# sed -i 's/mu_beamformer=0/mu_beamformer=1/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#wifi加密方式，没有是none
# sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#wifi密码
# sed -i 's/key=15581822425/key=gds.2021/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh


sed -i -E 's/CONFIG_PACKAGE_busybox=(m|n)/CONFIG_PACKAGE_busybox=y/' .config

sed -i -E 's/CONFIG_PACKAGE_dnsmasq-full=(m|y)/# CONFIG_PACKAGE_dnsmasq-full is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_dhcp=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_dhcp is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_dhcpv6=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_dhcpv6 is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_dnssec=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_dnssec is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_auth=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_auth is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_nftset=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_nftset is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_conntrack=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_conntrack is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_noid=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_noid is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_dnsmasq_full_tftp=(m|y)/# CONFIG_PACKAGE_dnsmasq_full_tftp is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_firewall4=(m|y)/# CONFIG_PACKAGE_firewall4 is not set/' .config


#_/_/_/_/_/_/_/_/_/_/_/_/_/_/
sed -i -E 's/CONFIG_PACKAGE_kmod-ifb=(m|y)/# CONFIG_PACKAGE_kmod-ifb is not set/' .config
#_/_/_/_/_/_/_/_/_/_/_/_/_/_/

#_/_/_/_/_/_/_/_/_/_/_/_/_/_/
sed -i -E 's/CONFIG_PACKAGE_kmod-mhi-bus=(m|y)/# CONFIG_PACKAGE_kmod-mhi-bus is not set/' .config
#_/_/_/_/_/_/_/_/_/_/_/_/_/_/


# sed -i -E 's/CONFIG_PACKAGE_luci=(m|y)/# CONFIG_PACKAGE_luci is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_luci-light=(m|y)/# CONFIG_PACKAGE_luci-light is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_luci-app-firewall=(m|y)/# CONFIG_PACKAGE_luci-app-firewall is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_luci-app-opkg=(m|y)/# CONFIG_PACKAGE_luci-app-opkg is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_default-settings=(m|y)/# CONFIG_PACKAGE_default-settings is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_default-settings-chn=(m|y)/# CONFIG_PACKAGE_default-settings-chn is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_luci-i18n-firewall-zh-cn=(m|y)/# CONFIG_PACKAGE_luci-i18n-firewall-zh-cn is not set/' .config
# sed -i -E 's/CONFIG_PACKAGE_luci-i18n-opkg-zh-cn=(m|y)/# CONFIG_PACKAGE_luci-i18n-opkg-zh-cn is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_ip-tiny=(m|y)/# CONFIG_PACKAGE_tc-tiny is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_tc-tiny=(m|y)/# CONFIG_PACKAGE_tc-tiny is not set/' .config
sed -i -E 's/CONFIG_PACKAGE_ifstat=(m|y)/# CONFIG_PACKAGE_ifstat is not set/' .config

sed -i -E 's/CONFIG_LINUX_5_15=(m|y)/CONFIG_LINUX_6_6=y/' .config


# Enable 802.11k/v/r
# sed -i 's/RRMEnable=0/RRMEnable=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.2G.dat
# sed -i 's/RRMEnable=0/RRMEnable=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
# sed -i 's/FtSupport=0/FtSupport=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.2G.dat
# sed -i 's/FtSupport=0/FtSupport=1/g' package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat
# echo 'WNMEnable=1' >> package/kernel/mt-drivers/mt_wifi/files/mt7615.1.2G.dat
# echo 'WNMEnable=1' >> package/kernel/mt-drivers/mt_wifi/files/mt7615.1.5G.dat

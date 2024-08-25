const deviceList = [
    {
        "name": "livinet_zr-3020-ubootmod",
        "description": "Livinet ZR-3020 (custom U-Boot layout)",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "livinet,zr-3020-ubootmod"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "netgear_wax220",
        "description": "NETGEAR WAX220",
        "packages": [
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "netgear,wax220"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "mediatek_mt7981-rfb",
        "description": "MediaTek MT7981 rfb",
        "packages": [
            "kmod-mt7981-firmware",
            "kmod-usb3",
            "e2fsprogs",
            "f2fsck",
            "mkf2fs",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "mediatek,mt7981-rfb"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "mediatek_mt7986a-rfb-nand",
        "description": "MediaTek MT7986 rfba AP (NAND)",
        "packages": [
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "mediatek,mt7986a-rfb-snand"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "mediatek_mt7986b-rfb",
        "description": "MediaTek MTK7986 rfbb AP",
        "packages": [
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "mediatek,mt7986b-rfb"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "mediatek_mt7988a-rfb",
        "description": "MediaTek MT7988A rfb",
        "packages": [
            "kmod-sfp"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "mediatek,mt7988a-rfb"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "mercusys_mr90x-v1",
        "description": "MERCUSYS MR90X v1",
        "packages": [
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "mercusys,mr90x-v1"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "qihoo_360t7",
        "description": "Qihoo 360T7 (OpenWrt U-Boot layout)",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "qihoo,360t7"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "qihoo_360t7-ubootmod",
        "description": "Qihoo 360T7 (custom U-Boot layout)",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "qihoo,360t7-ubootmod",
            "qihoo,360-t7-ubootmod"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "tplink_tl-xdr4288",
        "description": "TP-Link TL-XDR4288",
        "packages": [
            "kmod-usb3",
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "tplink,tl-xdr4288"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "tplink_tl-xdr6086",
        "description": "TP-Link TL-XDR6086",
        "packages": [
            "kmod-usb3",
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "tplink,tl-xdr6086"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "tplink_tl-xdr6088",
        "description": "TP-Link TL-XDR6088",
        "packages": [
            "kmod-usb3",
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "tplink,tl-xdr6088"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "xiaomi_mi-router-wr30u-112m-nmbm",
        "description": "Xiaomi Mi Router WR30U (custom U-Boot layout)",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "xiaomi,mi-router-wr30u-112m-nmbm"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "xiaomi_mi-router-wr30u-stock",
        "description": "Xiaomi Mi Router WR30U (stock layout)",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "xiaomi,mi-router-wr30u-stock"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "xiaomi_mi-router-wr30u-ubootmod",
        "description": "Xiaomi Mi Router WR30U (OpenWrt U-Boot layout)",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "xiaomi,mi-router-wr30u-ubootmod"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "xiaomi_redmi-router-ax6000",
        "description": "Xiaomi Redmi Router AX6000 (custom U-Boot layout)",
        "packages": [
            "kmod-leds-ws2812b",
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "xiaomi,redmi-router-ax6000"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "xiaomi_redmi-router-ax6000-stock",
        "description": "Xiaomi Redmi Router AX6000 (stock layout)",
        "packages": [
            "kmod-leds-ws2812b",
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "xiaomi,redmi-router-ax6000-stock"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "xiaomi_redmi-router-ax6000-ubootmod",
        "description": "Xiaomi Redmi Router AX6000 (OpenWrt U-Boot layout)",
        "packages": [
            "kmod-leds-ws2812b",
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "xiaomi,redmi-router-ax6000-ubootmod"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "zyxel_ex5601-t0-stock",
        "description": "Zyxel EX5601-T0 (stock layout)",
        "packages": [
            "kmod-mt7986-firmware",
            "mt7986-wo-firmware"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "mediatek,mt7986a-rfb-snand"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "zyxel_nwa50ax-pro",
        "description": "ZyXEL NWA50AX Pro",
        "packages": [
            "kmod-mt7981-firmware",
            "mt7981-wo-firmware",
            "zyxel-bootconfig"
        ],
        "hasImageMetadata": 1,
        "supportedDevices": [
            "zyxel,nwa50ax-pro"
        ],
        "targetPlatform": "mediatek/filogic"
    },
    {
        "name": "buffalo_wxr-5950ax12",
        "description": "Buffalo WXR-5950AX12",
        "packages": ["ipq-wifi-buffalo_wxr-5950ax12"],
        "hasImageMetadata": 1,
        "supportedDevices": ["buffalo,wxr-5950ax12"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "dynalink_dl-wrx36",
        "description": "Dynalink DL-WRX36",
        "packages": ["ipq-wifi-dynalink_dl-wrx36"],
        "hasImageMetadata": 1,
        "supportedDevices": ["dynalink,dl-wrx36"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "edgecore_eap102",
        "description": "Edgecore EAP102",
        "packages": ["ipq-wifi-edgecore_eap102"],
        "hasImageMetadata": 1,
        "supportedDevices": ["edgecore,eap102"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "edimax_cax1800",
        "description": "Edimax CAX1800",
        "packages": ["ipq-wifi-edimax_cax1800"],
        "hasImageMetadata": 1,
        "supportedDevices": ["edimax,cax1800"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "netgear_wax218",
        "description": "Netgear WAX218",
        "packages": ["kmod-spi-gpio", "kmod-spi-bitbang", "kmod-gpio-nxp-74hc164", "ipq-wifi-netgear_wax218"],
        "hasImageMetadata": 1,
        "supportedDevices": ["netgear,wax218"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "prpl_haze",
        "description": "prpl Foundation Haze",
        "packages": ["ath11k-firmware-qcn9074", "ipq-wifi-prpl_haze", "kmod-ath11k-pci"],
        "hasImageMetadata": 1,
        "supportedDevices": ["prpl,haze"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "qnap_301w",
        "description": "QNAP 301w",
        "packages": ["ipq-wifi-qnap_301w"],
        "hasImageMetadata": 1,
        "supportedDevices": ["qnap,301w"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "redmi_ax6",
        "description": "Redmi AX6",
        "packages": ["ipq-wifi-redmi_ax6", "kmod-usb3", "kmod-usb-dwc3", "kmod-usb-dwc3-qcom", "automount"],
        "hasImageMetadata": 1,
        "supportedDevices": ["redmi,ax6"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "redmi_ax6-stock",
        "description": "Redmi AX6 (stock layout)",
        "packages": ["ipq-wifi-redmi_ax6", "kmod-usb3", "kmod-usb-dwc3", "kmod-usb-dwc3-qcom", "automount"],
        "hasImageMetadata": 1,
        "supportedDevices": ["redmi,ax6-stock"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "xiaomi_ax3600",
        "description": "Xiaomi AX3600",
        "packages": ["ipq-wifi-xiaomi_ax3600", "kmod-ath10k-ct-smallbuffers", "ath10k-firmware-qca9887-ct", "kmod-usb3", "kmod-usb-dwc3", "kmod-usb-dwc3-qcom", "automount"],
        "hasImageMetadata": 1,
        "supportedDevices": ["xiaomi,ax3600"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "xiaomi_ax3600-stock",
        "description": "Xiaomi AX3600 (stock layout)",
        "packages": ["ipq-wifi-xiaomi_ax3600", "kmod-ath10k-ct-smallbuffers", "ath10k-firmware-qca9887-ct", "kmod-usb3", "kmod-usb-dwc3", "kmod-usb-dwc3-qcom", "automount"],
        "hasImageMetadata": 1,
        "supportedDevices": ["xiaomi,ax3600-stock"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "xiaomi_ax9000",
        "description": "Xiaomi AX9000",
        "packages": ["ipq-wifi-xiaomi_ax9000", "kmod-ath11k-pci", "ath11k-firmware-qcn9074", "kmod-ath10k-ct", "ath10k-firmware-qca9887-ct"],
        "hasImageMetadata": 1,
        "supportedDevices": ["xiaomi,ax9000"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "zte_mf269",
        "description": "ZTE MF269",
        "packages": ["ipq-wifi-zte_mf269"],
        "hasImageMetadata": 1,
        "supportedDevices": ["zte,mf269"],
        "targetPlatform": "ipq807x/generic"
    },
    {
        "name": "zyxel_nbg7815",
        "description": "ZYXEL NBG7815",
        "packages": ["ipq-wifi-zyxel_nbg7815", "kmod-ath11k-pci", "kmod-hwmon-tmp103", "kmod-bluetooth"],
        "hasImageMetadata": 1,
        "supportedDevices": ["zyxel,nbg7815"],
        "targetPlatform": "ipq807x/generic"
    }
]
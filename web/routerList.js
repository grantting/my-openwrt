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
    }
]
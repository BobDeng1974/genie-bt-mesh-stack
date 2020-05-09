NAME := light_ctl

GENIE_MAKE_PATH := app/example/bluetooth/$(NAME)

$(NAME)_COMPONENTS  += genie_app bluetooth.bt_host bluetooth.bt_mesh yloop cli

$(NAME)_INCLUDES += ../ \
					../../../../genie_app \
					../../../../genie_app/base \
					../../../../genie_app/bluetooth/host \
					../../../../genie_app/bluetooth/mesh

$(NAME)_SOURCES  := light_ctl.c

ble = 1
bt_mesh = 1
en_bt_smp = 1

bt_host_tinycrypt = 1

# Host configurations
GLOBAL_DEFINES += CONFIG_BLUETOOTH
GLOBAL_DEFINES += CONFIG_BT_CONN
#GLOBAL_DEFINES += CONFIG_BT_CENTRAL
GLOBAL_DEFINES += CONFIG_BT_PERIPHERAL
#GLOBAL_DEFINES += CONFIG_BLE_50


# Mesh function select
GLOBAL_DEFINES += CONFIG_BT_MESH
GLOBAL_DEFINES += CONFIG_BT_MESH_PROV
GLOBAL_DEFINES += CONFIG_BT_MESH_PB_ADV
GLOBAL_DEFINES += CONFIG_BT_MESH_PB_GATT
GLOBAL_DEFINES += CONFIG_BT_MESH_PROXY
GLOBAL_DEFINES += CONFIG_BT_MESH_GATT_PROXY
GLOBAL_DEFINES += CONFIG_BT_MESH_RELAY
#GLOBAL_DEFINES += CONFIG_BT_MESH_FRIEND
#GLOBAL_DEFINES += CONFIG_BT_MESH_LOW_POWER
#GLOBAL_DEFINES += CONFIG_BT_MESH_SHELL

# Mesh foundation model select
GLOBAL_DEFINES += CONFIG_BT_MESH_CFG_SRV
GLOBAL_DEFINES += CONFIG_BT_MESH_HEALTH_SRV
MESH_MODEL_GEN_ONOFF_SRV = 1
#MESH_MODEL_DIABLE_TRANS = 1
MESH_MODEL_LIGHTNESS_SRV = 1
MESH_MODEL_CTL_SRV = 1
MESH_MODEL_VENDOR_SRV = 1
ALI_SIMPLE_MODLE = 1


GLOBAL_DEFINES += CONFIG_BT_DEVICE_NAME=\"light\"

GLOBAL_DEFINES += PROJECT_SW_VERSION=0x00010101
GLOBAL_DEFINES += PROJECT_SECRET_KEY=\"00112233445566770011223344556677\"

# Feature configurations
GLOBAL_DEFINES += GENIE_OLD_AUTH
GLOBAL_DEFINES += CONIFG_OLD_FLASH_PARA
#GLOBAL_DEFINES += GENIE_ULTRA_PROV

genie_ota = 1
genie_vendor_timer = 1

ifeq ($(HOST_MCU_FAMILY),ch6121)
include $(GENIE_MAKE_PATH)/$(HOST_MCU_FAMILY).mk
else ifeq ($(HOST_MCU_FAMILY),tg7100b)
include $(GENIE_MAKE_PATH)/light_ctl_tg7100b.mk
else ifeq ($(HOST_MCU_FAMILY),tc32_825x)
include $(GENIE_MAKE_PATH)/light_ctl_tc825x.mk
endif


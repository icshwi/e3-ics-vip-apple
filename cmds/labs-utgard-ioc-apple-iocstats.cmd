# Required modules
## module_name,version

require iocStats,1856ef5
require recsync,1.3.0

# Environment variables
epicsEnvSet(ENGINEER, "Wayne Lewis")

## Paths
epicsEnvSet(TOP, "$(E3_CMD_TOP)")
epicsEnvSet("IOCSTATS_CMD_TOP", "$(TOP)/../../e3-iocStats/cmds")
epicsEnvSet("RECSYNC_CMD_TOP", "$(TOP)/../../e3-recsync/cmds")

## Database macros
epicsEnvSet(SYS, "LabS-Utgard-VIP:")
epicsEnvSet(DEV, "Ctrl-IOC-apple")
epicsEnvSet("IOC",  "$(SYS)$(DEV)")

iocshLoad "$(IOCSTATS_CMD_TOP)/iocStats.cmd" "IOC=$(IOC):IocStats")

iocshLoad "$(RECSYNC_CMD_TOP)/recsync.cmd"

iocInit()

dbl > "$(TOP)/$(IOC)_PVs.list"



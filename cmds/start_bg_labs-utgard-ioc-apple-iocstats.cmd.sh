#! /bin/bash
source /epics/base-3.15.5/require/3.0.0/bin/setE3Env.bash
#nohup iocsh.bash labs-utgard-rack1-pdu1.cmd < /dev/zero &
/usr/bin/procServ -f -L /var/log/procServ/labs-utgard-ioc-apple-iocstats -i ^C^D -c /var/run/procServ/labs-utgard-ioc-apple-iocstats 2001 /epics/base-3.15.5/require/3.0.0/bin/iocsh.bash /home/ioc/iocs/ics-vip-apple/cmds/labs-utgard-ioc-apple-iocstats.cmd &

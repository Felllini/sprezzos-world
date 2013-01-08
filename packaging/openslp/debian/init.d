#! /bin/sh
### BEGIN INIT INFO
# Provides:          slpd
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# X-Start-Before:    slapd
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: script to start/stop the OpenSLP daemon
# Description:       script to start/stop the OpenSLP daemon
### END INIT INFO

DAEMON=/usr/sbin/slpd
NAME=slpd
DESC="OpenSLP server"

test -f $DAEMON || exit 0

case "$1" in
  start)
	echo -n "Starting $DESC: "
	start-stop-daemon --start --quiet --pidfile /var/run/$NAME.pid \
		--exec $DAEMON
	echo "$NAME."
	;;
  stop)
	echo -n "Stopping $DESC: "
	start-stop-daemon --stop --quiet --pidfile /var/run/$NAME.pid \
		--exec $DAEMON
	echo "$NAME."
	;;
  reload)
	echo "Reloading $DESC configuration files."
	start-stop-daemon --stop --signal 1 --quiet --pidfile \
		/var/run/$NAME.pid --exec $DAEMON
  ;;
  restart|force-reload)
	echo -n "Restarting $DESC: "
	start-stop-daemon --stop --quiet --pidfile \
		/var/run/$NAME.pid --exec $DAEMON
	sleep 1
	start-stop-daemon --start --quiet --pidfile \
		/var/run/$NAME.pid --exec $DAEMON
	echo "$NAME."
	;;
  *)
	N=/etc/init.d/$NAME
	# echo "Usage: $N {start|stop|restart|reload|force-reload}" >&2
	echo "Usage: $N {start|stop|restart|force-reload}" >&2
	exit 1
	;;
esac

exit 0

DBNAME?=grass

what:
	@echo Use: make "<flush|load|reload>"
	@false

reload: flush load

flush:
	psql -f flush.sql ${DBNAME}

load:
	psql -f network.sql ${DBNAME}
	psql -f sites.sql -v sites="'`pwd`/sites.txt'" ${DBNAME}

reload: flush load

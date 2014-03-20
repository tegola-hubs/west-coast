DBNAME?=grass

what:
	@echo Use: make "<flush|load|reload>"
	@false

reload: flush load

flush:
	psql -f flush.sql ${DBNAME}

load:

reload: flush load

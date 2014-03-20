DBNAME?=grass

what:
	@echo Use: make "<drop|load|reload|geom>"
	@false

reload: drop load

drop:
	psql -f drop.sql ${DBNAME}

load:
	psql -f schema.sql ${DBNAME}
	psql -f radios.sql ${DBNAME}
	psql -f routers.sql ${DBNAME}
	psql -f cabling.sql ${DBNAME}
	psql -f masts.sql ${DBNAME}
	psql -f anttbl.sql ${DBNAME}
	psql -f antennas.sql ${DBNAME}

geom:
	psql -f geom.sql ${DBNAME}

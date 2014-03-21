DBNAME?=grass

what:
	@echo Use: make "<flush|load|reload>"
	@false

reload: flush load

flush:
	psql -f flush.sql ${DBNAME}

load: network sites ptp

network: 
	psql -f network.sql ${DBNAME}

sites:
	psql -f sites.sql -v sites="'`pwd`/sites.txt'" ${DBNAME}

ptp: ptp.sql
	psql -f ptp.sql ${DBNAME}

ptp.sql: ptp.txt
	python ptp.py < $< > $@

reload: flush load

clean:
	rm -f ptp.sql
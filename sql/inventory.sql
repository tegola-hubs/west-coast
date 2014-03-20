BEGIN TRANSACTION;
DROP TABLE IF EXISTS bom;
CREATE TABLE bom (
	id	SERIAL PRIMARY KEY,
	network	INTEGER NOT NULL REFERENCES network(id),
	site	INTEGER REFERENCES site(id),
	item	VARCHAR(256) NOT NULL,
	quantity	INTEGER NOT NULL,
	cost		FLOAT NOT NULL
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, radio_type.name, count(*), radio_type.cost
	FROM radio
		JOIN radio_type ON radio.type = radio_type.id
		JOIN antenna ON radio.antenna = antenna.id
		JOIN cell ON antenna.cell = cell.id
		JOIN network ON cell.network = network.id
	WHERE radio_type.integrated IS FALSE
	GROUP BY network.id, cell.id, radio_type.name, radio_type.cost
	ORDER BY network.id, cell.id, radio_type.name
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, antenna_type.name, count(*), antenna_type.cost
	FROM radio
		JOIN radio_type ON radio.type = radio_type.id
		JOIN antenna ON radio.antenna = antenna.id
		JOIN antenna_type ON antenna.type = antenna_type.id
		JOIN cell ON antenna.cell = cell.id
		JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id, antenna_type.name, antenna_type.cost
	ORDER BY network.id, cell.id, antenna_type.name
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, site.id, router_type.name, count(*), router_type.cost
	FROM router
		JOIN router_type ON router.type = router_type.id
		JOIN site ON router.site = site.id
		JOIN network ON site.network = network.id
	GROUP BY network.id, site.id, router_type.name, router_type.cost
	ORDER BY network.id, site.id, router_type.name
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, site.id, 'Scaffolding (meters)', 36, 4.33
	FROM site
		JOIN network ON site.network = network.id
		JOIN mast ON mast.site = site.id
		JOIN mast_type ON mast.type = mast_type.id
	WHERE iscell IS TRUE AND mast_type.name = 'Type 1'
	GROUP BY network.id, site.id
	ORDER BY network.id, site.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, site.id, 'Forged double scaffolding coupler', 18, 1.40
	FROM site
		JOIN network ON site.network = network.id
		JOIN mast ON mast.site = site.id
		JOIN mast_type ON mast.type = mast_type.id
	WHERE iscell IS TRUE AND mast_type.name = 'Type 1'
	GROUP BY network.id, site.id
	ORDER BY network.id, site.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, cable_type.name, 10 * count(antenna.cell), cable_type.cost
	FROM radio
		JOIN antenna ON radio.antenna = antenna.id
		JOIN cell ON antenna.cell = cell.id
		JOIN network ON cell.network = network.id,
	     cable_type
	WHERE cable_type.name = 'CAT5 Ethernet, shielded'
	GROUP BY network.id, cell.id, antenna.cell, cable_type.name, cable_type.cost
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, 'Ethernet RJ45, shielded', 3 * count(antenna.cell), 0.35
	FROM radio
		JOIN antenna ON radio.antenna = antenna.id
		JOIN cell ON antenna.cell = cell.id
		JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id, antenna.cell
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, 'IP67 Outdoor Enclosure', 1, 50
	FROM cell JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, 'Passive Power over Ethernet Injector', 1, 16.50
	FROM cell JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, '12-24V power supply', 1, 50
	FROM cell JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, 'Twin core 20A DC power cabling (meters)', 2, 2.33
	FROM cell JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, cell.id, 'Splashproof blade fuse holder', 2, 2.08
	FROM cell JOIN network ON cell.network = network.id
	GROUP BY network.id, cell.id
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT network.id, site.id, cable_type.name AS item, length AS quantity, cable_type.cost AS cost
	FROM cabling
		JOIN site ON cabling.a=site.id
		JOIN network ON site.network=network.id
		JOIN cable_type ON cabling.type=cable_type.id
	GROUP BY network.id, site.id, cable_type.name, cable_type.cost, cabling.length
	ORDER BY network.id, site.id, cable_type.name
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT DISTINCT network.id, site.id, 'BR H92 latching RCD spur', 1, 29.40
	FROM cabling
		JOIN site ON cabling.a=site.id
		JOIN network ON site.network=network.id
		JOIN cable_type ON cabling.type=cable_type.id
	GROUP BY network.id, site.id
	ORDER BY network.id, site.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT DISTINCT network.id, site.id, '100VA Isolating Transformer', 1, 40
	FROM cabling
		JOIN site ON cabling.a=site.id
		JOIN network ON site.network=network.id
		JOIN cable_type ON cabling.type=cable_type.id
	GROUP BY network.id, site.id
	ORDER BY network.id, site.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT DISTINCT network.id, site.id, 'IP67 Outdoor Enclosure', 1, 50
	FROM cabling
		JOIN site ON cabling.a=site.id
		JOIN network ON site.network=network.id
		JOIN cable_type ON cabling.type=cable_type.id
	GROUP BY network.id, site.id
	ORDER BY network.id, site.id
);

INSERT INTO bom (network, site, item, quantity, cost) (
	SELECT ALL network.id, cell.id, 'Radome for Ubiquiti 30dBi dish', 1, 42
	FROM antenna
		JOIN antenna_type ON antenna.type = antenna_type.id
		JOIN cell ON antenna.cell = cell.id
		JOIN network ON cell.network = network.id
	WHERE antenna_type.name = 'RD-5G30'
	GROUP BY network.id, cell.id, antenna.id
	ORDER BY network.id, cell.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, cable_type.name, 20 * network.subscribers, cable_type.cost
	FROM network, cable_type
	WHERE cable_type.name = 'CAT5 Ethernet, shielded'
	GROUP BY network.id, cable_type.name, cable_type.cost
	ORDER BY network.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, radio_type.name, network.subscribers * 2 / 3, radio_type.cost
	FROM network, radio_type
	WHERE radio_type.name = 'NSM5'
	GROUP BY network.id, radio_type.name, radio_type.cost
	ORDER BY network.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, radio_type.name, network.subscribers / 3, radio_type.cost
	FROM network, radio_type
	WHERE radio_type.name = 'LOCOM5'
	GROUP BY network.id, radio_type.name, radio_type.cost
	ORDER BY network.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, router_type.name, network.subscribers * 1 / 4, router_type.cost
	FROM network, router_type
	WHERE router_type.name = 'Mikrotik RouterBoard 951-2n'
	GROUP BY network.id, router_type.name, router_type.cost
	ORDER BY network.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, router_type.name, network.subscribers / 2, router_type.cost
	FROM network, router_type
	WHERE router_type.name = 'Mikrotik RouterBoard 951Ui-2HnD'
	GROUP BY network.id, router_type.name, router_type.cost
	ORDER BY network.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, router_type.name, network.subscribers * 1 / 4, router_type.cost
	FROM network, router_type
	WHERE router_type.name = 'Mikrotik RouterBoard 951G-2HnD'
	GROUP BY network.id, router_type.name, router_type.cost
	ORDER BY network.id
);

INSERT INTO bom (network, item, quantity, cost) (
	SELECT network.id, 'Ethernet RJ45, shielded', 3 * network.subscribers, 0.35
	FROM network
	GROUP BY network.id
	ORDER BY network.id
);

COMMIT;

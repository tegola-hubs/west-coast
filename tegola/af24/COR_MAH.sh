g.region w=178950 e=185950 s=808400 n=813000

export GRASS_WIDTH=1600
export GRASS_HEIGHT=1050
export GRASS_PNGFILE=COR_MAH_map.png

d.mon start=PNG

g.region align=raster_50k
d.rast map=raster_50k

d.vect map=ptp_grass type=line display=shape color=blue width=3 where="c1name='COR' AND c2name='MAH'"
d.vect map=site_grass type=point icon=basic/star color=red fcolor=red size=25 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where="name='COR'" 
d.vect map=site_grass type=point icon=basic/star color=red fcolor=red size=25 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where="name='MAH'"
d.barscale at=5,95

d.mon stop=PNG

export GRASS_WIDTH=400
export GRASS_HEIGHT=262
export GRASS_PNGFILE=COR_MAH_map_small.png

d.mon start=PNG

g.region align=raster_250k
d.rast map=raster_250k

d.vect map=ptp_grass type=line display=shape color=blue width=2 where="c1name='COR' AND c2name='MAH'"
d.vect map=site_grass type=point icon=basic/star color=red fcolor=red size=15 where="name='COR'" 
d.vect map=site_grass type=point icon=basic/star color=red fcolor=red size=15 where="name='MAH'"
d.barscale at=5,95

d.mon stop=PNG

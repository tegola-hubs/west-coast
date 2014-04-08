export GRASS_WIDTH=1950
export GRASS_HEIGHT=736
export GRASS_PNGFILE=EIG_RAN_map.png

d.mon start=PNG

g.region w=139500 e=192500 s=773000 n=793000
g.region align=raster_250k
d.rast map=raster_250k

d.vect map=ptp_grass type=line display=shape color=blue width=3 where="c1name='EIG' AND c2name='RAN'"
d.vect map=site_grass type=point icon=basic/star color=red fcolor=red size=25 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where="name='EIG'" 
d.vect map=site_grass type=point icon=basic/star color=red fcolor=red size=25 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where="name='RAN'"
d.barscale at=5,95

d.mon stop=PNG

o.pointtopoint network=WCB dem=profile_dtm dsn=dbname=grass \
   output=. where="s1.name='EIG' AND s2.name='RAN'"

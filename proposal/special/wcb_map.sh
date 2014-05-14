export GRASS_WIDTH=2400
export GRASS_HEIGHT=2900
export GRASS_PNGFILE=wcb_map.png

d.mon stop=x0
d.mon start=PNG

g.region w=120000 e=240000 s=715000 n=860000
g.region align=raster_250k
d.rast map=raster_250k


colour2=cyan
colour2l=blue
colour3=green
colour3l=red
colour4=violet
colour4l=violet

d.vect map=ptp_grass type=line display=shape color=${colour2l} width=4 where="cat_=2"
d.vect map=ptp_grass type=line display=shape color=${colour3l} width=4 where="cat_=3"
d.vect map=ptp_grass type=line display=shape color=${colour4l} width=4 where="cat_=4"

d.vect map=site_grass type=point icon=basic/star color=red fcolor=${colour2} size=40 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where='cat_=2'
d.vect map=site_grass type=point icon=basic/star color=red fcolor=${colour3} size=60 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where='cat_=3'
d.vect map=site_grass type=point icon=basic/star color=red fcolor=${colour4} size=40 attrcol=name lcolor=black lsize=24 xref=center yref=bottom font=bold bcolor=gold display=shape,attr where='cat_=4'

d.barscale at=5,95

d.mon stop=PNG

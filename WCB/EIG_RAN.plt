
set xlabel "Distance (meters)"
set ylabel "Elevation (meters)"
set xrange[-981.5:40241.5]
set yrange[-75.6217188:453.7303128]
set key off

set terminal pngcairo size 320,320 enhanced font 'Verdana,6'
set output "html/WCB/EIG_RAN_thumb.png"

plot 	"html/WCB/EIG_RAN_terrain.dat" using 1:2 with lines title "Elevation Profile" lt rgb "#006400", 	"html/WCB/EIG_RAN_fresnel.dat" using 1:2 with lines title "First Fresnel Zone" lc rgb "#FF7F50" lt 2, 	"html/WCB/EIG_RAN_fresnel.dat" using 3:4 with lines notitle lc rgb "#FF7F50" lt 2, 	"html/WCB/EIG_RAN_ptp.dat" using 1:2 with lines title "Direct path" lt rgb "#8A2BE2"

set title "Point to Point link: EIG -> RAN"
set key bmargin left horizontal
set label "Path length:" offset graph 0.0,-0.05
set label "39260 meters" offset graph 0.2,-0.05
set label "Frequency:" offset graph 0.0,-0.08
set label "6525 MHz" offset graph 0.2,-0.08
set label "Path loss:" offset graph 0.0,-0.11
set label "-140 dB" offset graph 0.2,-0.11

set terminal pngcairo size 800,800 enhanced font 'Verdana,10'
set output "html/WCB/EIG_RAN.png"
replot

set notitle
set terminal epslatex color size 5.75,6
set output "html/WCB/EIG_RAN.tex"
replot

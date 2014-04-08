
set xlabel "Distance (meters)"
set ylabel "Elevation (meters)"
set xrange[-1290.0:52890.0]
set yrange[-86.9771702:521.8630212]
set key off

set terminal pngcairo size 320,320 enhanced font 'Verdana,6'
set output "html/WCB/GLB_EIG_thumb.png"

plot 	"html/WCB/GLB_EIG_terrain.dat" using 1:2 with lines title "Elevation Profile" lt rgb "#006400", 	"html/WCB/GLB_EIG_fresnel.dat" using 1:2 with lines title "First Fresnel Zone" lc rgb "#FF7F50" lt 2, 	"html/WCB/GLB_EIG_fresnel.dat" using 3:4 with lines notitle lc rgb "#FF7F50" lt 2, 	"html/WCB/GLB_EIG_ptp.dat" using 1:2 with lines title "Direct path" lt rgb "#8A2BE2"

set title "Point to Point link: GLB -> EIG"
set key bmargin left horizontal
set label "Path length:" offset graph 0.0,-0.05
set label "51600 meters" offset graph 0.2,-0.05
set label "Frequency:" offset graph 0.0,-0.08
set label "6525 MHz" offset graph 0.2,-0.08
set label "Path loss:" offset graph 0.0,-0.11
set label "-142 dB" offset graph 0.2,-0.11

set terminal pngcairo size 800,800 enhanced font 'Verdana,10'
set output "html/WCB/GLB_EIG.png"
replot

set notitle
set terminal epslatex color size 5.75,6
set output "html/WCB/GLB_EIG.tex"
replot

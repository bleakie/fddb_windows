# Compare your continuous ROC curves with other methods
# At terminal: gnuplot contROC.p
set terminal png size 1280, 960 enhanced font 'Verdana,18'
set size 1,1
set xtics 50
set ytics 0.1
set grid
set ylabel "True positive rate"
set xlabel "False positive"
set xr [0:500]
set yr [0:1.0]
set key below
set output "contROC.png"
plot  "rocCurves/SSH-v1-ContROC.txt" using 2:1 title 'SSH-v1-ContROC' with lines lw 2 , \
"rocCurves/SSH-v2-ContROC.txt" using 2:1 title 'SSH-v2-ContROC' with lines lw 2 , \
"rocCurves/SSH-v3-ContROC.txt" using 2:1 title 'SSH-v3-ContROC' with lines lw 2


 


# Compare your discrete ROC curves with other methods
# At terminal: gnuplot discROC.p
set terminal png size 1280, 960 enhanced font 'Verdana,18'
set size 1,1
set xtics 100
set ytics 0.1
set grid
set ylabel "True positive rate"
set xlabel "False positive"
set xr [0:1000]
set yr [0:1.0]
set key below
set output "discROC.png"
plot  "rocCurves/MTCNNDiscROC.txt" using 2:1 title 'MTCNN' with lines lw 2 , \
"rocCurves/smallhardface.txt" using 2:1 title 'smallhardface' with lines lw 2 , \
"rocCurves/FaceBoxesDiscROC.txt" using 2:1 title 'FaceBoxes' with lines lw 2 , \
"rocCurves/SSH-v1-DiscROC.txt" using 2:1 title 'SSH-v1-DiscROC' with lines lw 2 , \
"rocCurves/SSH-v2-DiscROC.txt" using 2:1 title 'SSH-v2-DiscROC' with lines lw 2 , \
"rocCurves/SSH-v3-DiscROC.txt" using 2:1 title 'SSH-v3-DiscROC' with lines lw 2 , \
"rocCurves/PCNDiscROC.txt" using 2:1 title 'PCN' using 2:1 t

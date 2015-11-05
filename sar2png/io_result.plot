#!/usr/bin/gnuplot

in_file_name = "sar_in.txt"
out_file_name = "sar_la.png"

#set terminal png size 1920, 480
set title "disk io"
set xdata time
set timefmt "%H:%M:%S"
set format x "%H:%M:%S"
set yrange [0:80000]
set y2range [0:1600000]
set xlabel "time"
set ylabel "tps"
set y2label "b/s"
set y2tics
#set size 10,2
#set size 0.5,0.5

#do for [i=4:7] {
#  day = sprintf("%02d", i)
#  do for [j=0:23] {
#    hour = sprintf("%02d", j)
#    in_file_name = "io_201509".day.".txt"
#    out_file_name = "io_201509".day."_".hour.".png"
#    set xrange [hour.":20:00":hour.":24:59"]
    set output out_file_name
    plot in_file_name using 1:2 w lp title "tps" axes x1y1,\
         in_file_name using 1:3 w lp title "rtps" axes x1y1,\
         in_file_name using 1:4 w lp title "wtps" axes x1y1,\
         in_file_name using 1:5 w lp title "read" axes x1y2,\
         in_file_name using 1:6 w lp title "write" axes x1y2
#  }
#}


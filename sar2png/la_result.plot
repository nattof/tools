#!/usr/bin/gnuplot

in_file_name = "sar_in.txt"
out_file_name = "sar_io.png"

#set terminal png size 1920, 480
set title "load average"
set xdata time
set timefmt "%H:%M:%S"
set format x "%H:%M:%S"
#set yrange [1:100]
set y2range [0:3]
set xlabel "time"
set ylabel "sz"
set y2label "avg"
set y2tics 1
set my2tics 0.1
set mxtics 10
#set size 10,2
#set size 0.5,0.5

#do for [i=4:7] {
#  day = sprintf("%02d", i)
#  do for [j=0:23] {
#    hour = sprintf("%02d", j)
#    in_file_name = "la_201509".day.".txt"
#    out_file_name = "la_201509".day."_".hour.".png"
#    set xrange [hour.":20:00":hour.":24:59"]
    set output out_file_name
    plot in_file_name using 1:2 w lp title "runq-sz" axes x1y1,\
         in_file_name using 1:3 w lp title "plist-sz" axes x1y1,\
         in_file_name using 1:4 w lp title "ldavg-1" axes x1y2
#  }
#}


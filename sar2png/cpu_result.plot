#!/usr/bin/gnuplot

in_file_name = "sar_in.txt"
out_file_name = "sar_cpu.png"

#set terminal png size 1920, 480
set title "cpu"
set xdata time
set timefmt "%H:%M:%S"
set format x "%H:%M:%S"
set yrange [1:100]
set xlabel "time"
set ylabel "(%)"
#set size 10,2
#set size 0.5,0.5

#do for [i=4:7] {
#  day = sprintf("%02d", i)
#  do for [j=0:23] {
#    hour = sprintf("%02d", j)
#    in_file_name = "cpu_201509".day.".txt"
#    out_file_name = "cpu_201509".day."_".hour.".png"
#    set xrange [hour.":20:00":hour.":24:59"]
    set output out_file_name
    plot in_file_name using 1:3 w lp title "user",\
         in_file_name using 1:5 w lp title "system",\
         in_file_name using 1:6 w lp title "iowait",\
         in_file_name using 1:8 w lp title "idle"
#  }
#}


set terminal canvas jsdir ""
set output "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/combined_reference/contigs_reports/nucmer_output/raw/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "10000000" 10000000, \
 "20000000" 20000000, \
 "30000000" 30000000, \
 "40000000" 40000000, \
 "50000000" 50000000, \
 "60000000" 60000000, \
 "70000000" 70000000, \
 "80000000" 80000000, \
 "" 86655544 \
)
set ytics ( \
 "0" 0, \
 "20000000" 20000000, \
 "40000000" 40000000, \
 "60000000" 60000000, \
 "80000000" 80000000, \
 "" 90052867 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:86655544]
set yrange [1:90052867]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/combined_reference/contigs_reports/nucmer_output/raw/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/combined_reference/contigs_reports/nucmer_output/raw/final-contigs.rplot" title "REV" w lp ls 2

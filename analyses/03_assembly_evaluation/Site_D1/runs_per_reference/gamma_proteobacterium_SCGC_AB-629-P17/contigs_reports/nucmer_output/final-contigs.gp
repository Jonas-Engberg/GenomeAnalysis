set terminal canvas jsdir ""
set output "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/gamma_proteobacterium_SCGC_AB-629-P17/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "200000" 200000, \
 "400000" 400000, \
 "600000" 600000, \
 "800000" 800000, \
 "1000000" 1000000, \
 "1200000" 1200000, \
 "1400000" 1400000, \
 "" 1424092 \
)
set ytics ( \
 "0" 0, \
 "2000" 2000, \
 "4000" 4000, \
 "6000" 6000, \
 "8000" 8000, \
 "10000" 10000, \
 "12000" 12000, \
 "14000" 14000, \
 "" 14569 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:1424092]
set yrange [1:14569]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/gamma_proteobacterium_SCGC_AB-629-P17/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/gamma_proteobacterium_SCGC_AB-629-P17/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2

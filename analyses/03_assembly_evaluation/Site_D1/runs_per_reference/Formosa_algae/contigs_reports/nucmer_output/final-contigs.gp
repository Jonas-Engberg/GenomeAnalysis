set terminal canvas jsdir ""
set output "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Formosa_algae/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "500000" 500000, \
 "1000000" 1000000, \
 "1500000" 1500000, \
 "2000000" 2000000, \
 "2500000" 2500000, \
 "3000000" 3000000, \
 "3500000" 3500000, \
 "4000000" 4000000, \
 "" 4292461 \
)
set ytics ( \
 "0" 0, \
 "3000" 3000, \
 "6000" 6000, \
 "9000" 9000, \
 "12000" 12000, \
 "15000" 15000, \
 "18000" 18000, \
 "21000" 21000, \
 "" 21876 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4292461]
set yrange [1:21876]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Formosa_algae/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Formosa_algae/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2

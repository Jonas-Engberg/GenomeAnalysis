set terminal canvas jsdir ""
set output "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D3/runs_per_reference/Ilumatobacter_fluminis/contigs_reports/nucmer_output/final-contigs.html"
set ytics ( \
 "0" 0, \
 "4000" 4000, \
 "8000" 8000, \
 "12000" 12000, \
 "16000" 16000, \
 "20000" 20000, \
 "24000" 24000, \
 "28000" 28000, \
 "32000" 32000, \
 "" 35368 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:35368]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D3/runs_per_reference/Ilumatobacter_fluminis/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D3/runs_per_reference/Ilumatobacter_fluminis/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2

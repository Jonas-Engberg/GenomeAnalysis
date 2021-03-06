set terminal canvas jsdir ""
set output "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Ilumatobacter_nonamiensis_YM16-303/contigs_reports/nucmer_output/final-contigs.html"
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
 "" 4282232 \
)
set ytics ( \
 "0" 0, \
 "300" 300, \
 "600" 600, \
 "900" 900, \
 "1200" 1200, \
 "1500" 1500, \
 "1800" 1800, \
 "2100" 2100, \
 "2400" 2400, \
 "" 2485 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4282232]
set yrange [1:2485]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Ilumatobacter_nonamiensis_YM16-303/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Ilumatobacter_nonamiensis_YM16-303/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2

set terminal canvas jsdir ""
set output "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Syntrophus_aciditrophicus/contigs_reports/nucmer_output/final-contigs.html"
set size 1,1
set grid
set key outside bottom right
set border 5
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "k105_108214_flag_1_multi_4.0000_len_2713" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:2713]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Syntrophus_aciditrophicus/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/joen8526/GenomeAnalysis/analyses/03_assembly_evaluation/Site_D1/runs_per_reference/Syntrophus_aciditrophicus/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2

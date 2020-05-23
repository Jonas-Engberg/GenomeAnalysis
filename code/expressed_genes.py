#read in one file and create list of lines
lines = open("/home/joen8526/GenomeAnalysis/analyses/09_readcount_htseq/SRR4342137/bin_11_count.out").read().split('\n')

#formting
lines_1 = lines[:-5]
binsize = len(lines) - 5 + int(lines[-3].split()[1])

genes = []
for i in lines_1:
    genes.append(i.split())

#count unexpressed genes
unexpressed = 0
expressed = 0
expressed_genes = []
for i in genes:
    if i[1] == "0":
        unexpressed += 1
    else:
        expressed += 1
        expressed_genes.append(i)

print("Unexpressed genes:", unexpressed)
print("Expressed genes:", expressed)

for i in expressed_genes:
    i[1] = int(i[1])
    i[0], i[1] = i[1], i[0]
expressed_genes_sorted = sorted(expressed_genes, key = lambda x: int(x[0])/binsize)
print(expressed_genes_sorted)
print("binsize: " + str(binsize))


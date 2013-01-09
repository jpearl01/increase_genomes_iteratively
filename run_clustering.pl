#!/usr/bin/perl

use strict;
use warnings;

my @dirs = `find . -type d`;

for my $d (2..21){
    print $d;
#    print `ls`;
    chdir('/mnt/raid_0/josh/mcat21/increasing_genomes_project/'.$d) or warn "Couldn't change the dir: $!\n";
    `~/my_clustergenes/clusterGenes4.pl ../../all_genes.fna ../../prots_vs_genes.tfasty ../../genes_vs_contigs.fasta .7 .7 .7 >clusterGenes`;
   `~/my_clustergenes/clusterReport.pl < clusterGenes >report_output`;
}

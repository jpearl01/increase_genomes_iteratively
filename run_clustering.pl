#!/usr/bin/perl

use strict;
use warnings;
use Cwd;

#This program runs justin's clustering algorithm over several iterations.  Essentially, we want to "add" genomes to the project one at a time.
#Everytime a genome is added, we calculate the score and pull it out of the "report_output" for that clustering.
#The usage for this file is:

#perl run_clustering.pl all_annotations.fasta aa_vs_na.tfasty na_vs_contigs.fasta strain list

my ($orfs, $tfasty, $contigs, $strain) = @ARGV;

open I, $strain or die "Can't open the strain_list file: $!";

my @strains = <I>;

my $dir_count = 2;

for my $i (2..@strains){
    mkdir $i unless (-d $i);
    open SL, '>',  $i.'\strain_list', or die "Can't open the new strain_list in the directory $i\n";
    for my $s (0..$i-1){
	print SL $strains[$s]."\n";
    }
} 

my @dirs = `find . -type d`;
my $dir = getcwd;

for my $d (2..@strains){
    print $dir.'/'.$d."\n";
    chdir($dir.'/'.$d) or warn "Couldn't change the dir: $!\n";
    `~/my_clustergenes/clusterGenes4.pl $orfs $tfasty $contigs .7 .7 .7 >clusterGenes`;
    `~/my_clustergenes/clusterReport.pl < clusterGenes >report_output`;
}

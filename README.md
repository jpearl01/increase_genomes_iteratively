increase_genomes_iteratively
============================

Project to create a chart showing the changes to the core genome size as new genomes are included.

Some todo items include work on the awkward pathing stuff.

__Important:__ you need to have the "my_clustergenes" repo cloned into your home directory for this to work. (i.e. the path ~/my_clustergenes/ needs to exist).  I guess it also goes without saying this will only work in a posix environment, although it might even be more specific to a unix/linux environment.

On our server guanine, I used this command to test:

perl run_clustering.pl /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/1_annotations/gv200812n4_all.fas /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/2_fasta_tfasty/aa_01_vs_gv200812n4.tfasty /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/2_fasta_tfasty/01_vs_gv200812n4.fasta /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/2_fasta_tfasty/strain_list 

However, if you want to run this from the current directory(i.e. move the program run_clustering.pl to a different directory to run) it is a lot shorter to write something like this: 
p=$(pwd) && ./run_clustering.pl $p/53_nGenes.fna $p/53.tfasty $p/53_nGenes_v_contigs.fasta36 $p/strain_list

This adds the current path to any file you are trying to pass to the prog, I've found it necessary given the current implementation.

In general the usage is:
perl run_clustering.pl annotations.fasta aa.tfasty contigs.fasta strainlist

The final output is a file called __chart__
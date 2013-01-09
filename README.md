increase_genomes_iteratively
============================

Project to create a chart showing the changes to the core genome size as new genomes are included

On our server guanine, I used this command to test:

perl run_clustering.pl /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/1_annotations/gv200812n4_all.fas /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/2_fasta_tfasty/aa_01_vs_gv200812n4.tfasty /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/2_fasta_tfasty/01_vs_gv200812n4.fasta /mnt/p/o_drive/Projects/All-SEQUENCES/Annotation/RAST/GV/gv200812n4/2_fasta_tfasty/strain_list 

In general the usage is:
perl run_clustering.pl annotations.fasta aa.tfasty contigs.fasta strainlist

The final output is a file called __chart__
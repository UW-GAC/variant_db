CREATE TABLE smalltoytable
(
`# [1]CHROM` text(10),
`[2]POS` text(20),
`[3]REF` text(10),
`[4]ALT` text(10),
`[5]FILTER` text(100),
`MAP20` text(100),
`MAP35` text(100),
`MAP20(+-149bp)` text(100),
`MAP35(+-149bp)` text(100),
`CADD_phred` text(20),
`ENCODE_TFBS_score` text(1000),
`ENCODE_TFBS_cells` text(10000),
`ENCODE_Dnase_score` text(10),
`ENCODE_Dnase_cells` text(10),
`FANTOM5_enhancer_permissive` text(10),
`FANTOM5_enhancer_robust` text(10),
`ANNOVAR_ensembl_precedent_consequence` text(100),
`ANNOVAR_ensembl_precedent_gene` text(100),
`unique_variant` text(10)
);

-- --------------------------------
-- The current schema
-- --------------------------------

/*
Notes
- "In InnoDB tables, keep the PRIMARY KEY short to minimize storage overhead for secondary indexes. " - I'm not doing that with this rough pass, and I think that MySQL version 5.5.47 uses the MyISAM engine by default anyway, so this may not apply.

- I may want to partition (by chromosome?) for performance

*/

CREATE TABLE toytable
(
  FullRow text(10000) NOT NULL PRIMARY KEY,
  INDEX(FullRow(20)),
  chrom,
  pos,
  ref,
  alt,
  filter,
  cadd_phred,
  encode_tfbs_score,
  encode_tfbs_cells,
  encode_dnase_score,
  encode_dnase_cells,
  fantom5_enhancer_permissive,
  fantom5_enhancer_robust,
  annovar_ensembl_precedent_consequence,
  annovar_ensembl_precedent_gene,
  unique_variant
);

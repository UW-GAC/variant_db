#' Get variants in range
#'
#' @param con a database connection object (from dbR::dplyr-connect or dbR::get_db_mysql)
#' @param chromosome the chromosome - must be 1-22, X, or Y
#' @param start the first locus to look for a variant
#' @param end the last locus to look for a variant (default N/A)
#' @param isdplyr logical indicating whther database connection is dplyr (default FALSE)
#' @return A data frame with chromosome, position, reference allele, and alternate allele for each variant within the range (including start and end loci)
#'
#' @examples
#' single_locus <- get_variants(con = con, chromosome = 1, start = 13980)
#' range <- get_variants(con = con, chromosome = 1, start = 10000, end = 12000)
#'
#' @export

get_variants <- function(con, chromosome, start, end = NULL, isdplyr = FALSE) {
  # check arguments
  if (!is(con, "MySQLConnection") || !is(con, "src_mysql")) {
    msg <- paste(con, "is not a valid database connection")
    stop(msg)
  }

  if (!(chromosome %in% c(1:22, "X", "Y"))) {
    stop("chromosome argument must be 1-22, X, or Y")
  }
  if (!is.numeric(start)) {
    stop("start argument must be numeric")
  }
  if (!is.numeric(end) %or% !is.null(end)) {
    stop("end argument must be numeric or NULL")
  }
  if (!is.logical(isdplyr)) {
    stop("isdeplyr argument must be TRUE or FALSE")
  }

  # if it's a MySQLConnection, get variants that way THIS IS A STUB
  variants <- data.frame(chromosome = "",
                         position = "",
                         reference = "",
                         alternate = "")

  # if it's a dplyr connection, get variants that way THIS IS A STUB
  variants <- data.frame(chromosome = "",
                         position = "",
                         reference = "",
                         alternate = "")

  return(variants)
}

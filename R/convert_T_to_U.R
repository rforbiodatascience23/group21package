#' Substitute thymine with uracil
#'
#' @param dna_seq Input should be a dna string of any given length
#'
#' @return rna_seq Output is the corresponding rna string where thymine has been replaced with uracil
#' @export
#'
#' @examples convert_t_to_u("ATGCTAGCTA")
convert_t_to_u <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}

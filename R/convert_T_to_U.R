#' Substitute thymine with uracil
#'
#' @param dna_seq text
#'
#' @return rna_seq text
#' @export
#'
#' @examples convert_t_to_u("ATGCTAGCTA")
convert_t_to_u <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}

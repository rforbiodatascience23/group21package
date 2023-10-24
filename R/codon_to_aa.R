#' codon_to_aa
#'
#' @param codons string of amino acid shortcodes
#'
#' @return string of translated amino acid sequence
#' @export
#'
#' @examples codon_to_aa("AUG")
codon_to_aa <- function(codons){
  aa_seq <- paste0(codon_table[codons], collapse = "")
  return(aa_seq)
}

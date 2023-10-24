#' random_peptide
#'
#' @param sequence param_name
#'
#' @return return description of function output
#' @export
#'
#' @examples sequence(1234)
random_peptide <- function(sequence){
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence, replace = TRUE)
  peptide_sequence <- paste0(nucleotides, collapse = "")
  return(peptide_sequence)
}

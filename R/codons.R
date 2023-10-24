#' Splits a sequence into codons
#'
#' @param sequence  any string given will work, but this function is primarily relevant for RNA sequences in compliance with the central dogma.
#' @param start from which position the function will start splitting the string. Default = 1
#'
#' @return returning a vector of codons (substrings of three characters).
#' @export
#'
#' @examples codons("ATCGGCTGGCAT")
codons <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  seq_codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length - 3 + 1, by = 3),
                      last = seq(from = 3 + start - 1, to = sequence_length, by = 3))
  return(seq_codons)
}


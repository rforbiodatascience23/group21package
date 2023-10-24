#' Printing codons for a sequence given
#'
#' @param sequence any string given will work, but this function is primarily relevant for DNA and protein sequences.
#' @param start from which position the function will start returning substrings. Default = 1
#'
#' @return returning codons (substrings of three characters) of a sequence
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


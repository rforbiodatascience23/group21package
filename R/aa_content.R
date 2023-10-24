#' aa_content
#'
#' @param peptide string of amino acids
#'
#' @return Bar-plot of amino acid counts in the peptide
#' @export
#'
#' @examples aa_content("YGCTRAVSGGTCGCTRACCSAGGTCGGCTRC")
aa_content <- function(peptide){

  # Finds the unique amino acids the peptide contains
  unique_aa <- peptide |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Counts the occurances of each unique amino acid
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = peptide, pattern =  amino_acid)) |>
    as.data.frame()

  # Formatting the data structure
  colnames(counts) <- c("Counts")
  counts[["Peptide"]] <- rownames(counts)

  # Plotting the counts as a bar-plot
  content_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Peptide, y = Counts, fill = Peptide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Returns the plot
  return(content_plot)
}

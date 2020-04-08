#' Transcription Function
#' 
#' This function converts a DNA string to the corresponding RNA string.
#' @param rawDNA This parameter is input of the raw DNA string or a variable/file containing the DNA string.
#' @keywords DNA, RNA, Transcription
#' @export
#' @examples 
#' transcription()

transcription <- function(rawDNA) {
  RNA <- gsub('T', 'U', rawDNA)
  return (RNA)
}

#' Nucleotide Number Function
#' 
#' This function counts the number of nucleotides in the DNA string.
#' @param rawDNA This parameter is input of the raw DNA string or a variable/file containing the DNA string.
#' @keywords DNA, number, nucleotide, counting
#' @export
#' @examples 
#' nuc_number()

nuc_number <- function(rawDNA) {
  num <- nchar(rawDNA)
  return(num)
}



#' r4xie186 fucntion
#'
#' This function allows you to express your love of cats.
#' @param love Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' data<-as.data.frame(cbind(sample=c("sample1", "sample2", "sample3"), Group1=c(4,5,6), Group2=c(8,7,5), Group3=c(6,4,3)))
#' data$Group1=as.numeric(data$Group1)
#' data$Group2=as.numeric(data$Group2)
#' data$Group3=as.numeric(data$Group3)
#' XXX ()

count2percentage4df <- function(data, firstColAsRowNames = TRUE){
  if(firstColAsRowNames){
      row.names(data) = data[, 1]
  }
  data =data[,-c(1)]
  data.percent = 100*data/rowSums(data)
  return(data.percent)
}





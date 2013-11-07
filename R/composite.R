composite <-
function(set, nomiss=.8, tr=0) {
  return(sapply(data.frame(t(set)), meanif, nomiss, tr))
}

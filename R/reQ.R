reQ <-
function(x, dist, ties="random") {
  if(length(x) != sum(dist)) {stop("Length of x must be equal to sum of dist.")}
  Q.scores <- rep(1:length(dist), times=dist)
  res <- Q.scores[rank(x, ties.method=ties)]
  return(res)
}

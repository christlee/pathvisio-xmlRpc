getParticipants <- function(pathway, type, host="localhost", port=9000, path=NA, outputdir=NA) {
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(type)) stop("You must provide which participants you wants; i.e GeneProduct, Protein, Metabolite or Reactions/Interactions.");
  if (is.na(path)) path = getwd();
  if (is.na(outputdir)) outputdir = tempdir();

  pwyPath = paste(path, "/", pathway, ".gpml", sep="")
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  return = xml.rpc(hostUrl, "PathVisio.getPathwayParticipants", pwyPath, type, outputdir)
  result <- unlist(strsplit(return,"\n"))
  l = length(result)
  if (l==1) result <- unlist(strsplit(return,", "))[1]
  else {
    result[l] <- unlist(strsplit(result[l]," "))[1]
    result<- c(result[2:l])
  }
  result
}

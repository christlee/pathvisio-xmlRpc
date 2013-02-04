annotateElementById <- function(pathway, graphId, identifier, source, host=localhost, port=9000, path=NA){
  if (missing(pathway)) stop("You must provide a pathway name.");
  if (missing(name)) stop("You must provide the graphId of the data node.");
  if (missing(identifier)) stop("You must provide an identifier.");
  if (missing(source)) stop("You must provide the source of the identifier.");
  if (is.na(path)) path = getwd();
  
  pwyPath = paste(path,"/",pathway,".gpml",sep="")
  hostUrl = paste("http://",host,":",port,"/",sep="")
  xml.rpc(hostUrl,"PathVisio.annotateElement",pwyPath,graphId,identifier,source)
}
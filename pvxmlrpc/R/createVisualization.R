createVisualization <- function(gexname, gsample, gcolors, gvalues, rsample, rcolors, rexprs, host="localhost", port=9000) {
  if (missing(gexname)) stop("You must provide the name of the gexfile to use.");
  if (missing(gsample)) stop("You must provide the name of the sample to apply color gradient on.");
  if (missing(gcolors)) stop("You must provide 2/3 colors to use for gradient visualization.");
  if (missing(gvalues)) stop("You must provide 2/3 values corresponding to the colors for the gradient visualization.");
  if (missing(rsample)) stop("You must provide the name of the sample to apply color rule on.");
  if (missing(rcolors)) stop("You must provide the colors to use for each of the color rules.");
  if (missing(rexprs)) stop("You must provide the expressions to use for each of the color rules.");

 
  hostUrl = paste("http://", host, ":", port, "/", sep="")
  xml.rpc(hostUrl, "PathwayHandler.createVisualization", gexfile, gsample, gcolors, gvalues, rsample, rcolors, rexprs)
}


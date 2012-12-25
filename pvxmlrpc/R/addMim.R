addMim <- function(pathway, name, startNode, endNode, type, lineID=" ", linesource="", dir="", host="localhost", port=9000) {

  if (match(type, c(
    "catalysis",
    "necessary-stimulation",
    "binding",
    "conversion",
    "stimulation", 
    "modification",
    "inhibition",
    "cleavage",
    "covalent-bond",
    "branching-left",
    "branching-right",
    "transcription-translation",
    "gap"), 0) == 0) stop("Unknown MIM type");
  
  endAnnotation = paste("mim-",type,sep="")
  startAnnotation = ""
  if (match(type, c("binding","covalent-bond","gap"), 0) == 0) startAnnotation = endAnnotation;


  addLine(pathway, name, startNode, endNode, startAnnotation, endAnnotation, lineID, linesource, dir, host, port)
}

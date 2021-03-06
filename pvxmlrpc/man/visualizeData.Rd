\name{visualizeData}
\alias{visualizeData}
\alias{visualizeDataByURI}
\title{
Visualize Data functions
}
\description{
Functions for adding visualizations on data nodes of a pathway
}
\usage{
visualizeData(pathway, gexname, dbname, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir=NA)
visualizeDataByURI(uri, gexname, dbname, host="localhost", port=9000, pwypath=NA, gexpath=NA, dbpath=NA, outputdir=NA)
}
\arguments{
 \item{pathway}{name of the pathway on which to visualize data}
 \item{uri}{WikiPathways ID of the pathway on which to visualize data}
 \item{gexname}{name of the gex file, which has the data to be visualized(if there's no "." in the name, ".pgex"  is used as file extension)}
 \item{dbname}{name of the database file (if there's no "." in the name, ".bridge" is used as file extension)}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{pwypath}{folder in which the pathway file is stored}
 \item{gexpath}{folder in which the gex file is stored}
 \item{dbpath}{folder in which the database file is stored}
 \item{outputdir}{folder in which the results are saved}
}
\examples{
#visualize data from the data imported into the "data.pgex" file, onto the locally stored "ACE Inhibitor" pathway with help of the "Hs_Derby.bridge" database
\dontrun{visualizeData("ACE Inhibitor", "data", "Hs_Derby")}

#visualize the same data on the "ACE Inhibitor" pathway(WP554) from wikipathways
\dontrun{visualizeDataByURI("WP554","data","Hs_Derby")}
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans
}
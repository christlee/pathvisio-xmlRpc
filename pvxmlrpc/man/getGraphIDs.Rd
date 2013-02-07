\name{getGraphIDs}
\alias{getGraphIDs}
\title{
Graph identifier search option
}
\description{
Get all the graph identifiers of the data nodes with the name given
}
\usage{
getGraphIDs(pathway,name,host="localhost",port=9000,path=NA)
}
\arguments{
 \item{pathway}{name the pathway}
 \item{name}{name of the data nodes to retrieve the graph Id from}
 \item{host}{server hosting the PathVisioRPC program}
 \item{port}{communication port on which to contact PathVisioRPC}
 \item{path}{folder in which the pathway file is stored}
}
\value{
 list of graph identifiers with the same name as the input
}
\author{
Anwesha Dutta
Egon Willighagen
Christ Leemans

Maintainer: Anwesha Dutta <anwesha.dutta@maastrichtuniversity.nl>
<Egon Willighagen <egon.willighagen@gmail.com>
<C.Leemans@student.maastrichtuniversity.nl>
}
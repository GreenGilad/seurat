% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{FindMultiModalNeighbors}
\alias{FindMultiModalNeighbors}
\title{Construct weighted nearest neighbor graph}
\usage{
FindMultiModalNeighbors(
  object,
  reduction.list,
  dims.list,
  k.nn = 20,
  l2.norm = TRUE,
  knn.graph.name = "wknn",
  snn.graph.name = "wsnn",
  weighted.nn.name = "weighted.nn",
  modality.weight.name = NULL,
  knn.range = 200,
  prune.SNN = 1/15,
  sd.scale = 1,
  cross.contant.list = NULL,
  smooth = FALSE,
  return.intermediate = FALSE,
  modality.weight = NULL,
  verbose = TRUE
)
}
\arguments{
\item{object}{A Seurat object}

\item{reduction.list}{A list of two dimensional reductions, one for each of
the modalities to be integrated}

\item{dims.list}{A list containing the dimensions for each reduction to use}

\item{k.nn}{the number of multimodal neighbors to compute. 20 by default}

\item{l2.norm}{Perform L2 normalization on the cell embeddings after
dimensional reduction. TRUE by default.}

\item{knn.graph.name}{Multimodal knn graph name}

\item{snn.graph.name}{Multimodal snn graph name}

\item{weighted.nn.name}{Multimodal neighbor object name}

\item{modality.weight.name}{Variable name to store modality weight in object
meta data}

\item{knn.range}{The number of approximate neighbors to compute}

\item{prune.SNN}{Cutoff not to discard edge in SNN graph}

\item{sd.scale}{The scaling factor for kernel width. 1 by default}

\item{cross.contant.list}{Constant used to avoid divide-by-zero errors. 1e-4
by default}

\item{smooth}{Smoothing modality score across each individual modality
neighbors. FALSE by default}

\item{return.intermediate}{Store intermediate results in misc}

\item{modality.weight}{A \code{\link{ModalityWeights}} object generated by
\code{FindModalityWeights}}

\item{verbose}{Print progress bars and output}
}
\value{
Seurat object containing a nearest-neighbor object, KNN graph, and
SNN graph - each based on a weighted combination of modalities.
}
\description{
This function will construct a weighted nearest neighbor (WNN) graph. For
each cell, we identify the nearest neighbors based on a weighted combination
of two modalities. Takes as input two dimensional reductions, one computed
for each modality.Other parameters are listed for debugging, but can be left
as default values.
}
\concept{clustering}

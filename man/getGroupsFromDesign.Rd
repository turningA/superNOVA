% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getGroupsFromDesign.R
\name{getGroupsFromDesign}
\alias{getGroupsFromDesign}
\title{Split input matrix(es) based on the design matrix.}
\usage{
getGroupsFromDesign(inputMat, design, inputMatB = NULL,
  secondMat = FALSE)
}
\arguments{
\item{inputMat}{Input (e.g., expression) matrix which will be subsetted.}

\item{design}{Standard design matrix, must specify at least two conditions. For more info, see ?model.matrix}

\item{inputMatB}{Optional input (e.g., expression) matrix which will be subsetted in the same way.}

\item{secondMat}{Logical value indicating whether there is a second input matrix to be subsetted.}
}
\value{
A list whose first element is a list of subsetted matrices and whose second element is a list of group names.
}
\description{
This function splits the input matrix(es) based on a design matrix, into a named list of subsetted matrices. If the design matrix has no names, this function will create names for the resulting list of matrices.
}
\examples{
data(darmanis); data(design_mat); darmanis_subset = darmanis[1:30, ]
groups_from_design = getGroupsFromDesign(inputMat = darmanis_subset, design = design_mat)
str(groups_from_design)
}

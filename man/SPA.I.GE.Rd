\name{SPA.I.GE}
\alias{SPA.I.GE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Rare variants association test score to evaulate the effect of gene-environmental interactions
}
\description{
Compute the nonparametric association information score between a set of rare variants and dichotomous outcomes, incorporating interactions with environmental factors.
}
\usage{
SPA.I.GE(x, y, E, nperm = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
 	a matrix of numeric genotypes with each row as an individual and each column as a separate rare SNP. Each genotype should be coded as \code{0},\code{1} and \code{2}. 
}
  \item{y}{
	a vector of phenotypes. The length of \code{y} should be the same as the number of rows of \code{x}.
}
  \item{E}{
	a vector of environmental factors. It must be a categorical variable.
}
  \item{nperm}{
	the number of permutations used to obtain the significance level. See details. 
}
}
\details{
	This function evaluates the gene-environmental intearction effects associated with the dichotomous trait. The phenotype \code{y} must be dichotomous. The significance is computed using both global permutation and local permutation. 
}
\value{
 \item{I2star}{The numerical value of the information score.}
 \item{pvalue.global}{The p-value from global permutation.}
 \item{pvalue.local}{The p-value from local permutation.}
 \item{call}{The matched call.}
 \item{type}{Type of the method used. It is "env".}
}
\references{
Fan, R., Lo, S-H (2013). A robust model-free approach for rare variantss association studies incorporating gene-gene and gene-environmental interactions. \emph{PLOS ONE} 8(12):e83057.
}
\author{
	Ruixue Fan rf2283@columbia.edu
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
	data(SPA_example)
	attach(SPA_example)
	SPA.I.GE <- SPA.I.GE(x,y.d,E,nperm=10)
	print(SPA.I.GE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

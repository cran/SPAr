\name{SPA.I}
\alias{SPA.I}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Compute rare variants association test scores with and(or) without gene-gene interactions
}
\description{
Compute the nonparametric association test scores between a set of rare variants and continous or dichotomous outcomes with and(or) without gene-gene interactions
}
\usage{
SPA.I(x, y, nperm = 100, type = "dichotomous", interaction = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
     a matrix of numeric genotypes with each row as an individual and each column as a separate rare SNP. Each genotype should be coded as \code{0},\code{1} and \code{2}. 
}
  \item{y}{
	a vector of phenotypes. The length of \code{y} should be the same as the number of rows of \code{x}.
}
  \item{nperm}{
	the number of permutations used to obtain the significance level. 
}
  \item{type}{
	a string to indicate if the phenoype is continuous or dichotomous. It could take values "dichotomous" or "continuous".
}
  \item{interaction}{
	an integer indicating if the interaction is considered when computing the information score. See Details. 
}
}
\details{
	There are three types of interactions: 1 - compute the score without interaction (score I1); 2 - compute the score with interaction (score I2); 0 - compute both scores with and without interaction as well as the adaptive p* score.}
\value{
  \item{I}{The numeric value of I score. Could be a vector of 3 values if interaction=0.}
  \item{pvalue}{The p-value of corresponding I score.Could be a vector of 3 values if interaction=0.}
  \item{nperm}{Number of permutations.}
  \item{call}{The matched call.}
  \item{type}{Type of methods used. Could be "I1","I2" or "p*".}
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

## compute p-values of dichotomous traits

pstar_dich <- SPA.I(x,y.d,nperm=10) #compute I1,I2 and p* and their p-values
print(pstar_dich)

I1_dich <- SPA.I(x,y.d,interaction=1,nperm=10) # only compute I1 and its pvalue
print(I1_dich)


## compute p-values of continuous traits

pstar_cont <- SPA.I(x,y.c,nperm=10,type="cont")  #compute I1,I2 and p* and their p-values
print(pstar_cont)

I1_cont <- SPA.I(x,y.c,type="cont",interaction=1,nperm=10) # only compute I1 and its pvalue
print(I1_cont)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

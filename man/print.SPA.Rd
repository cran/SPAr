\name{print.SPA}
\alias{print.SPA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Print out the values and significance of SPA test scores. 
}
\description{
	This function prints out the numerical values of SPA test statistics and their p-values.
}
\usage{
	\method{print}{SPA}(x,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
	an SPA object, result form \code{\link{SPA.I}} or \code{\link{SPA.I.GE}}.
}
  \item{...}{
		See \code{print}. 
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
%}
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

\seealso{
	\code{\link{SPA.I}},\code{\link{SPA.I.GE}}
}
\examples{
data(SPA_example)
attach(SPA_example)
I1_dich <- SPA.I(x,y.d,interaction=1,nperm=100) # only compute I1 and its pvalue
print(I1_dich)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

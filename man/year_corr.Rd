\name{year_corr}
\alias{year_corr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ An NBA Correlation Matrix Function
%%  ~~function to do ... ~~
}
\description{ This function that outputs a correlation matrix among all numeric variables in the Seasons_Stats_NBA dataset.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
year_corr(year)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{year}{
%%     ~~Describe \code{year} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{ Allison De Jong
%%  ~~who you are~~
}
\note{ Need to load the Seasons_Stats_NBA dataset from https://www.kaggle.com/drgilermo/nba-playe-stats#Seasons_Stats.csv for this funtction to work.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (year)
{
    x <- select_if(dNBA, is_numeric) \%>\% filter(Year == year) \%>\%
        select(-Year) \%>\% drop_na()
    y <- cor(x)
    result <- round(y, digits = 2)
    return(result)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

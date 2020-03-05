\name{get_max_pts}
\alias{get_max_pts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ A Max Points Function
%%  ~~A Max Points Function ~~
}
\description{ This function retrieves the max value of points made by any NBA player in a particular year.
%%  ~~ This function retrieves the max value of points made by any NBA player in a particular year ~~
}
\usage{
get_max_pts(year)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{year}{
%%     ~~Describe \code{year} here~~
}
}
\details{ Need to load the Seasons_Stats_NBA dataset from https://www.kaggle.com/drgilermo/nba-playe-stats#Seasons_Stats.csv for this funtction to work.
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
\note{
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
    result <- select(dNBA, Year, Player, PTS) \%>\% filter(Year ==
        year) \%>\% select(PTS) \%>\% summarize(max(PTS))
    return(result)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

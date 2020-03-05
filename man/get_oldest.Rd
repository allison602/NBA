\name{get_oldest}
\alias{get_oldest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ An Old Player Function
%%  ~~function to do ... ~~
}
\description{ This function retrieves the oldest NBA player in a particular year.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
get_oldest(year)
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
    x <- select(dNBA, Year, Player, Age) \%>\% filter(Year == year) \%>\%
        arrange(desc(Age), Player) \%>\% select(Player)
    result <- as.list(x$Player) \%>\% pluck(1)
    return(result)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wnba_stats_team.R
\name{wnba_teaminfocommon}
\alias{wnba_teaminfocommon}
\title{\strong{Get WNBA Stats API Team Common Info}}
\usage{
wnba_teaminfocommon(
  league_id = "10",
  season = most_recent_wnba_season(),
  season_type = "Regular Season",
  team_id = "1611661328",
  ...
)
}
\arguments{
\item{league_id}{League - default: '10'. Other options include '00': NBA, '20': G-League}

\item{season}{Season - format 2020-21}

\item{season_type}{Season Type - Regular Season, Playoffs, All-Star}

\item{team_id}{Team ID}

\item{...}{Additional arguments passed to an underlying function like httr.}
}
\value{
Return a named list of data frames: AvailableSeasons, TeamInfoCommon,
TeamSeasonRanks

\strong{TeamInfoCommon}\tabular{ll}{
   col_name \tab types \cr
   TEAM_ID \tab character \cr
   SEASON_YEAR \tab character \cr
   TEAM_CITY \tab character \cr
   TEAM_NAME \tab character \cr
   TEAM_ABBREVIATION \tab character \cr
   TEAM_CONFERENCE \tab character \cr
   TEAM_DIVISION \tab character \cr
   TEAM_CODE \tab character \cr
   TEAM_SLUG \tab character \cr
   W \tab character \cr
   L \tab character \cr
   PCT \tab character \cr
   CONF_RANK \tab character \cr
   DIV_RANK \tab character \cr
   MIN_YEAR \tab character \cr
   MAX_YEAR \tab character \cr
}


\strong{TeamSeasonRanks}\tabular{ll}{
   col_name \tab types \cr
   LEAGUE_ID \tab character \cr
   SEASON_ID \tab character \cr
   TEAM_ID \tab character \cr
   PTS_RANK \tab character \cr
   PTS_PG \tab character \cr
   REB_RANK \tab character \cr
   REB_PG \tab character \cr
   AST_RANK \tab character \cr
   AST_PG \tab character \cr
   OPP_PTS_RANK \tab character \cr
   OPP_PTS_PG \tab character \cr
}


\strong{AvailableSeasons}\tabular{ll}{
   col_name \tab types \cr
   SEASON_ID \tab character \cr
}
}
\description{
\strong{Get WNBA Stats API Team Common Info}

\strong{Get WNBA Stats API Team Common Info}
}
\details{
\if{html}{\out{<div class="sourceCode r">}}\preformatted{  wnba_teaminfocommon(team_id = '1611661328')
}\if{html}{\out{</div>}}
}
\author{
Saiem Gilani
}
\keyword{internal}

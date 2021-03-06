% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wnba_stats_player.R
\name{p_gamelog}
\alias{p_gamelog}
\alias{wnba_playergamelog}
\title{\strong{Get WNBA Stats API Player Game Log}}
\usage{
wnba_playergamelog(
  date_from = "",
  date_to = "",
  league_id = "10",
  player_id = "202250",
  season = "2022",
  season_type = "Regular Season"
)
}
\arguments{
\item{date_from}{date_from}

\item{date_to}{date_to}

\item{league_id}{League - default: '00'. Other options include '10': WWNBA, '20': G-League}

\item{player_id}{Player ID}

\item{season}{Season - format 2022}

\item{season_type}{Season Type - Regular Season, Playoffs, All-Star}
}
\value{
Return a named list of data frames: PlayerGameLog
}
\description{
\strong{Get WNBA Stats API Player Game Log}

\strong{Get WNBA Stats API Player Game Log}
}
\author{
Saiem Gilani
}

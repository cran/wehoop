% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wnba_stats_player.R
\name{pfantasy}
\alias{pfantasy}
\alias{wnba_playerfantasyprofile}
\title{\strong{Get WNBA Stats API Player Fantasy Profile}}
\usage{
wnba_playerfantasyprofile(
  league_id = "10",
  measure_type = "Base",
  pace_adjust = "N",
  per_mode = "Totals",
  player_id = "202250",
  plus_minus = "N",
  rank = "N",
  season = "2022",
  season_type = "Regular Season"
)
}
\arguments{
\item{league_id}{League - default: '00'. Other options include '10': WWNBA, '20': G-League}

\item{measure_type}{measure_type}

\item{pace_adjust}{Pace Adjustment - Y/N}

\item{per_mode}{Per Mode - PerGame, Totals}

\item{player_id}{Player ID}

\item{plus_minus}{Plus Minus - Y/N}

\item{rank}{Rank - Y/N}

\item{season}{Season - format 2022}

\item{season_type}{Season Type - Regular Season, Playoffs, All-Star}
}
\value{
Return a named list of data frames: DaysRestModified, LastNGames, Location, Opponent, Overall
}
\description{
\strong{Get WNBA Stats API Player Fantasy Profile}

\strong{Get WNBA Stats API Player Fantasy Profile}
}
\author{
Saiem Gilani
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wnba_stats_cume.R
\name{cumestatsplayer}
\alias{cumestatsplayer}
\alias{wnba_cumestatsplayer}
\title{\strong{Get WNBA Stats API Cumulative Player Stats}}
\usage{
wnba_cumestatsplayer(
  game_ids = "1022200018",
  league_id = "10",
  player_id = "204319",
  season = "2021-22",
  season_type = "Regular Season",
  team_id = ""
)
}
\arguments{
\item{game_ids}{game_ids}

\item{league_id}{league_id}

\item{player_id}{player_id}

\item{season}{season}

\item{season_type}{season_type}

\item{team_id}{team_id}
}
\value{
Return a named list of data frames: GameByGameStats, TotalPlayerStats
}
\description{
\strong{Get WNBA Stats API Cumulative Player Stats}

\strong{Get WNBA Stats API Cumulative Player Stats}
}
\author{
Saiem Gilani
}

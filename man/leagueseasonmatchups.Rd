% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wnba_stats_lineups.R
\name{leagueseasonmatchups}
\alias{leagueseasonmatchups}
\alias{wnba_leagueseasonmatchups}
\title{\strong{Get WNBA Stats API League Season Matchups}}
\usage{
wnba_leagueseasonmatchups(
  def_player_id = "",
  def_team_id = "",
  league_id = "10",
  off_player_id = "",
  off_team_id = "1611661313",
  per_mode = "Totals",
  season = "2021",
  season_type = "Regular Season"
)
}
\arguments{
\item{def_player_id}{def_player_id}

\item{def_team_id}{def_team_id}

\item{league_id}{league_id}

\item{off_player_id}{off_player_id}

\item{off_team_id}{off_team_id}

\item{per_mode}{per_mode}

\item{season}{season}

\item{season_type}{season_type}
}
\value{
Returns a named list of data frames: SeasonMatchups
}
\description{
\strong{Get WNBA Stats API League Season Matchups}

\strong{Get WNBA Stats API League Season Matchups}
}
\author{
Saiem Gilani
}

test_that("ESPN - WNBA Scoreboard", {
  skip_on_cran()
  x <- espn_wnba_scoreboard(season = "20200829")
  
  
  cols <- c(
    "matchup",
    "matchup_short",
    "season",
    "season_type",
    "season_slug",
    "game_id",
    "game_uid",
    "game_date",
    "attendance",
    "notes",
    "status_name",
    "broadcast_market",
    "broadcast_name",
    "start_date",
    "game_date_time",
    "home_team_name",
    "home_team_logo",
    "home_team_abb",
    "home_team_id",
    "home_team_location",
    "home_team_full_name",
    "home_team_color",
    "home_score",
    "home_win",
    "home_record",
    "away_team_name",
    "away_team_logo",
    "away_team_abb",
    "away_team_id",
    "away_team_location",
    "away_team_full_name",
    "away_team_color",
    "away_score",
    "away_win",
    "away_record"
  )
  
  expect_in(sort(cols), sort(colnames(x)))
  expect_s3_class(x, "data.frame")
})

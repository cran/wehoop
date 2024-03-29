test_that("WNBA League Dash Player Shot Locations", {
  skip_on_cran()
  skip_on_ci()
  
  x <- wnba_leaguedashplayershotlocations(league_id = "10", season = most_recent_wnba_season() - 1)
  
  cols_x1 <- c(
    "PLAYER_ID",
    "PLAYER_NAME",
    "TEAM_ID",
    "TEAM_ABBREVIATION",
    "AGE",
    "NICKNAME",
    "Restricted_Area_FGM",
    "Restricted_Area_FGA",
    "Restricted_Area_FG_PCT",
    "In_The_Paint_Non_RA_FGM",
    "In_The_Paint_Non_RA_FGA",
    "In_The_Paint_Non_RA_FG_PCT",
    "Mid_Range_FGM",
    "Mid_Range_FGA",
    "Mid_Range_FG_PCT",
    "Left_Corner_3_FGM",
    "Left_Corner_3_FGA",
    "Left_Corner_3_FG_PCT",
    "Right_Corner_3_FGM",
    "Right_Corner_3_FGA",
    "Right_Corner_3_FG_PCT",
    "Above_the_Break_3_FGM",
    "Above_the_Break_3_FGA",
    "Above_the_Break_3_FG_PCT",
    "Backcourt_FGM",
    "Backcourt_FGA",
    "Backcourt_FG_PCT",
    "Corner_3_FGM",
    "Corner_3_FGA",
    "Corner_3_FG_PCT"
  )
  
  
  expect_equal(sort(colnames(x[[1]])), sort(cols_x1))
  expect_s3_class(x[[1]], "data.frame")
  
  Sys.sleep(3)
  
})

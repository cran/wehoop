test_that("WNBA Boxscore Four Factors V2", {
  skip_on_cran()
  skip_on_ci()
  x <- wnba_boxscorefourfactorsv2(game_id = "1022200034")
  
  cols_x1 <- c(
    "GAME_ID",
    "TEAM_ID",
    "TEAM_ABBREVIATION",
    "TEAM_CITY",
    "PLAYER_ID",
    "PLAYER_NAME",
    "NICKNAME",
    "START_POSITION",
    "COMMENT",
    "MIN",
    "EFG_PCT",
    "FTA_RATE",
    "TM_TOV_PCT",
    "OREB_PCT",
    "OPP_EFG_PCT",
    "OPP_FTA_RATE",
    "OPP_TOV_PCT",
    "OPP_OREB_PCT"
  )
  
  cols_x2 <- c(
    "GAME_ID",
    "TEAM_ID",
    "TEAM_NAME",
    "TEAM_ABBREVIATION",
    "TEAM_CITY",
    "MIN",
    "EFG_PCT",
    "FTA_RATE",
    "TM_TOV_PCT",
    "OREB_PCT",
    "OPP_EFG_PCT",
    "OPP_FTA_RATE",
    "OPP_TOV_PCT",
    "OPP_OREB_PCT"
  )
  
  expect_equal(sort(colnames(x[[1]])), sort(cols_x1))
  expect_s3_class(x[[1]], "data.frame")
  expect_equal(sort(colnames(x[[2]])), sort(cols_x2))
  expect_s3_class(x[[2]], "data.frame")
  
  Sys.sleep(3)
})
 
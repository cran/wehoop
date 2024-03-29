test_that("WNBA Boxscore Player Tracking V2", {
  skip_on_cran()
  skip_on_ci()
  x <- wnba_boxscoreplayertrackv2(game_id = "1022200034")
  
  cols_x1 <- c(
    "GAME_ID",
    "TEAM_ID",
    "TEAM_ABBREVIATION",
    "TEAM_CITY",
    "PLAYER_ID",
    "PLAYER_NAME",
    "START_POSITION",
    "COMMENT",
    "MIN",
    "SPD",
    "DIST",
    "ORBC",
    "DRBC",
    "RBC",
    "TCHS",
    "SAST",
    "FTAST",
    "PASS",
    "AST",
    "CFGM",
    "CFGA",
    "CFG_PCT",
    "UFGM",
    "UFGA",
    "UFG_PCT",
    "FG_PCT",
    "DFGM",
    "DFGA",
    "DFG_PCT"
  )
  
  cols_x2 <- c(
    "GAME_ID",
    "TEAM_ID",
    "TEAM_NAME",
    "TEAM_ABBREVIATION",
    "TEAM_CITY",
    "MIN",
    "DIST",
    "ORBC",
    "DRBC",
    "RBC",
    "TCHS",
    "SAST",
    "FTAST",
    "PASS",
    "AST",
    "CFGM",
    "CFGA",
    "CFG_PCT",
    "UFGM",
    "UFGA",
    "UFG_PCT",
    "FG_PCT",
    "DFGM",
    "DFGA",
    "DFG_PCT"
  )
  
  
  expect_equal(sort(colnames(x[[1]])), sort(cols_x1))
  expect_s3_class(x[[1]], "data.frame")
  expect_equal(sort(colnames(x[[2]])), sort(cols_x2))
  expect_s3_class(x[[2]], "data.frame")
  
  Sys.sleep(3)
})
 
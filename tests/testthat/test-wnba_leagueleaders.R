test_that("WNBA League Leaders", {
  skip_on_cran()
  skip_on_ci()
  
  x <- wnba_leagueleaders(league_id = "10")
  
  cols_x1 <- c(
    "PLAYER_ID",
    "RANK",
    "PLAYER",
    "TEAM_ID",
    "TEAM",
    "GP",
    "MIN",
    "FGM",
    "FGA",
    "FG_PCT",
    "FG3M",
    "FG3A",
    "FG3_PCT",
    "FTM",
    "FTA",
    "FT_PCT",
    "OREB",
    "DREB",
    "REB",
    "AST",
    "STL",
    "BLK",
    "TOV",
    "PF",
    "PTS",
    "EFF",
    "AST_TOV",
    "STL_TOV"
  )
  
  expect_equal(sort(colnames(x[[1]])), sort(cols_x1))
  expect_s3_class(x[[1]], "data.frame")
  
  Sys.sleep(3)
  
})

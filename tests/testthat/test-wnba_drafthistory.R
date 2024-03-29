test_that("WNBA Draft History", {
  skip_on_cran()
  skip_on_ci()
  x <- wnba_drafthistory(season = most_recent_wnba_season() - 1)
  
  cols_x1 <- c(
    "PERSON_ID",
    "PLAYER_NAME",
    "SEASON",
    "ROUND_NUMBER",
    "ROUND_PICK",
    "OVERALL_PICK",
    "DRAFT_TYPE",
    "TEAM_ID",
    "TEAM_CITY",
    "TEAM_NAME",
    "TEAM_ABBREVIATION",
    "ORGANIZATION",
    "ORGANIZATION_TYPE",
    "PLAYER_PROFILE_FLAG"
  )
  
  expect_equal(sort(colnames(x[[1]])), sort(cols_x1))
  expect_s3_class(x[[1]], "data.frame")
  
  Sys.sleep(3)
})
 
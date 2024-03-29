
cols <- c(
  "id",
  "headline",
  "short_headline",
  "current",
  "previous",
  "points",
  "first_place_votes",
  "trend",
  "date",
  "last_updated",
  "record_summary",
  "team_id",
  "team_uid",
  "team_location",
  "team_name",
  "team_nickname",
  "team_abbreviation",
  "team_color",
  "team_logo",
  "name",
  "short_name",
  "type",
  "occurrence_number",
  "occurrence_type",
  "occurrence_last",
  "occurrence_value",
  "occurrence_display_value",
  "season_year",
  "season_start_date",
  "season_end_date",
  "season_display_name",
  "season_type_type",
  "season_type_name",
  "season_type_abbreviation",
  "first_occurrence_type",
  "first_occurrence_value"
)

test_that("ESPN - WBB Rankings", {
  skip_on_cran()
  x <- espn_wbb_rankings()
  expect_in(sort(cols), sort(colnames(x)))
  expect_s3_class(x, "data.frame")
})

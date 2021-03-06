#' **Get WNBA Stats API Scoreboard**
#' @name scoreboard
NULL
#' @title
#' **Get WNBA Stats API Scoreboard**
#' @rdname scoreboard
#' @author Saiem Gilani
#' @param league_id League - default: '00'. Other options include '10': WWNBA, '20': G-League
#' @param game_date Game Date, format: 2022/05/17
#' @param day_offset Day Offset (integer 0,-1)
#' @return Return a named list of data frames: Available, EastConfStandingsByDay,
#' GameHeader, LastMeeting, LineScore, SeriesStandings, WestConfStandingsByDay
#' @importFrom jsonlite fromJSON toJSON
#' @importFrom dplyr filter select rename bind_cols bind_rows as_tibble
#' @import rvest
#' @export
wnba_scoreboard <- function(league_id = '10',
                            game_date='2022/05/17',
                            day_offset=0){
  
  
  version <- "scoreboard"
  full_url <- wnba_endpoint(version)
  params <- list(
    LeagueID = league_id,
    GameDate = URLencode(game_date),
    DayOffset = day_offset
  )
  full_url <- httr::modify_url(full_url,query = params)
  tryCatch(
    expr = {
      resp <- full_url %>%
        .wnba_headers()
      
      df_list <- purrr::map(1:length(resp$resultSet$name), function(x){
        data <- resp$resultSet$rowSet[[x]] %>%
          data.frame(stringsAsFactors = F) %>%
          as_tibble()
        
        json_names <- resp$resultSet$headers[[x]]
        colnames(data) <- json_names
        return(data)
      })
      names(df_list) <- resp$resultSet$name
    },
    error = function(e) {
      message(glue::glue("{Sys.time()}: Invalid arguments or no scoreboard data for {game_date} available!"))
    },
    warning = function(w) {
    },
    finally = {
    }
  )
  return(df_list)
}


#' **Get WNBA Stats API Scoreboard V2**
#' @name scoreboardv2
NULL
#' @title
#' **Get WNBA Stats API Scoreboard V2**
#' @rdname scoreboardv2
#' @author Saiem Gilani
#' @param league_id League - default: '00'. Other options include '10': WWNBA, '20': G-League
#' @param game_date Game Date, format: 2022/05/17
#' @param day_offset Day Offset (integer 0,-1)
#' @return Return a named list of data frames: Available, EastConfStandingsByDay,
#' GameHeader, LastMeeting, LineScore, SeriesStandings, TeamLeaders,
#' TicketLinks, WestConfStandingsByDay, WinProbability
#' @importFrom jsonlite fromJSON toJSON
#' @importFrom dplyr filter select rename bind_cols bind_rows as_tibble
#' @import rvest
#' @export
wnba_scoreboardv2 <- function(league_id = '10',
                              game_date='2022/05/17',
                              day_offset=0){
  
  
  version <- "scoreboardV2"
  full_url <- wnba_endpoint(version)
  params <- list(
    LeagueID = league_id,
    GameDate = URLencode(game_date),
    DayOffset = day_offset
  )
  full_url <- httr::modify_url(full_url,query = params)
  tryCatch(
    expr = {
      resp <- full_url %>%
        .wnba_headers()
      
      df_list <- purrr::map(1:length(resp$resultSet$name), function(x){
        data <- resp$resultSet$rowSet[[x]] %>%
          data.frame(stringsAsFactors = F) %>%
          as_tibble()
        
        json_names <- resp$resultSet$headers[[x]]
        colnames(data) <- json_names
        return(data)
      })
      names(df_list) <- resp$resultSet$name
    },
    error = function(e) {
      message(glue::glue("{Sys.time()}: Invalid arguments or no scoreboardv2 data for {game_date} available!"))
    },
    warning = function(w) {
    },
    finally = {
    }
  )
  return(df_list)
}




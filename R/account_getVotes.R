#' @export
#' @rdname account_getVotes
getVotes <- function(address){
  url <- paste0(options$url, "/api/accounts/delegates/?address=", address)
  content(GET(url = url))
} # example: ark.getVotes(address)

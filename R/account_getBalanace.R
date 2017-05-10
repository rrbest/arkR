getBalance <- function(address){
  url <- paste0(options$url, "/api/accounts/getBalance/?address=", address)
  as.numeric(content(GET(url = url))$balance) / options$scaling
} # example: Account.getBalance(address)



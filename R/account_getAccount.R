getAccount <- function(address, type = 'dataframe'){
  url <- paste0(options$url, "/api/accounts?address=", address)

  if(type == "list"){
    a <- content(GET(url = url))
    return(a)
  }

  if(type == "dataframe"){
    account_as_list <- content(GET(url = url))
    account_as_dataframe <- as.data.frame(t(unlist(account_as_list)))
    return(account_as_dataframe)
  }

  if(!(type %in% c("list", "dataframe"))){
    return(print("Please include type as 'list' or 'dataframe'"))
  }

} # example: getAccount("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK", type="dataframe")

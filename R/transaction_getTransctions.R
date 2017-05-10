getTransactions <- function(address, type = 'dataframe'){
  url <- paste0(options$url, "/api/transactions?address=", address)

  if(type == "list"){
    a <- content(GET(url = url))
    return(a)
  }

  if(type == "dataframe"){
    a <- content(GET(url = url))$transactions
    b <- as.data.frame(t((matrix(t(unlist(a)), nrow=length(unlist(a[1]))))))
    colnames(b) <- names(a[[1]])[-which(names(a[[1]]) == 'asset')]
    return(b)
  }

  if(!(type %in% c("list", "dataframe"))){
    return(print("Please include type as 'list' or 'dataframe'"))
  }

} # example: getTransactions("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK", type="dataframe")

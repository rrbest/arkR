getDelegates <- function(type = 'dataframe'){
  url <- paste0(options$url, "/api/delegates")

  if(type == "list"){
    a <- content(GET(url = url))
    return(a)
  }

  if(type == "dataframe"){
    account_as_list <- content(GET(url = url))$delegates
    r <- length(account_as_list)
    names <- names(account_as_list[[1]])
    c <- length(names)

    account_as_dataframe <- matrix(nrow=r, ncol=c)
    colnames(account_as_dataframe) <- names
    for(i in 1:length(account_as_list)){
      account_as_dataframe[i, ] <- t(unlist(account_as_list[i]))[1, names]
    }

    return(account_as_dataframe)
  }

  if(!(type %in% c("list", "dataframe"))){
    return(print("Please include type as 'list' or 'dataframe'"))
  }

}

getByUsername <- function(username){
  url <- paste0(options$url, "/api/delegates/get?username=", username)
  content(GET(url=url))$delegate
}

getDelegate <- function(address){
  publicKey <- getPublicKey(address)
  url <- paste0(options$url, "/api/delegates/get?publicKey=", publicKey)
  content(GET(url=url))$delegate
}

getVoters <- function(address){
  publicKey <- getPublicKey(address)
  url <- paste0(options$url, "/api/delegates/voters?publicKey=", publicKey)
  content(GET(url=url))$accounts
}

getVotersByName <- function(username){
  publicKey <- getByUsername(username)$publicKey
  url <- paste0(options$url, "/api/delegates/voters?publicKey=", publicKey)
  content(GET(url=url))$accounts
}

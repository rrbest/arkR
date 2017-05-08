ark.getPublicKey <- function(address){
  url <- paste0(options$url, "/api/accounts/getPublicKey/?address=", address)
  content(GET(url = url))$publicKey
} # example: ark.getPublicKey(address)

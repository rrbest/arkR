getPublicKey <- function(address){
  url <- paste0(options$url, "/api/accounts/getPublicKey/?address=", address)
  content(GET(url = url))$publicKey
}
# example:
#   getPublicKey("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK")

getBlock <- function(blockId){
  url <- paste0(options$url, "/api/blocks/get?id=", blockId)
  content(GET(url = url))
}

getBlocks <- function(){
  url <- paste0(options$url, "/api/blocks")
  content(GET(url = url))
}

getBlockchainFee <- function(){
  url <- paste0(options$url, "/api/blocks/getFee")
  content(GET(url=url))$fee / options$scaling
}

getBlockchainHeight <- function(){
  url <- paste0(options$url, "/api/blocks/getHeight")
  content(GET(url=url))
}

getForgedByAccount <- function(address){
  publicKey <- getPublicKey("AG78yF1fZRcj43yTXmePHvHQrsWWDDokNk")
  url <- paste0(options$url, "/api/delegates/forging/getForgedByAccount?generatorPublicKey=", publicKey)
  result <- content(GET(url=url))
  result$fees <- as.numeric(result$fees) / options$scaling
  result$rewards <- as.numeric(result$rewards) / options$scaling
  result$forged <- as.numeric(result$forged) / options$scaling
  result
}

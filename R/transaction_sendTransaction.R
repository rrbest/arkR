sendTransaction = function(secretKey, secondSecretKey = NULL, amount, to) {
  data = list(
    secret = secretKey,
    amount =  amount * options$scaling,
    recipientId = to
  )

  if(!is.null(secondSecretKey)){
    data['secondSecret'] = secondSecretKey
  }

  url <- paste0(options$url, "/api/transactions")
  content(PUT(url, body = data, encode='json'))
}

# example:
#   sendTransaction(secretKey = "one two three four five six seven eight nine ten eleven twelve",
#                   to = address,
#                   amount = 1)

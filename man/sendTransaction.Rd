\name{sendTransaction}
\alias{sendTransaction}
\title{Send Transaction}
\usage{
sendTransaction(secretKey, to, amount)
}
\description{
Send ark from one account to another.
}
\examples{
# The following example would send 1 Ark from the account with the given secret key to the given address, which must be entered as a string.
# example:
sendTransaction(secretKey = "one two three four five six seven eight nine ten eleven twelve",
                to = address,
                amount = 1)

}

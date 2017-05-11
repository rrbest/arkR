\name{getTransaction}
\alias{getTransaction}
\title{Get Transaction}
\usage{
getTransactions(address, type)
}
\description{
Returns the last 50 transactions from an address in either list format or dataframe
}
\examples{
getTransactions("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK", type="dataframe")

getTransactions("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK", type="list")
}

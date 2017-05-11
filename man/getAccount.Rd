\name{getAccount}
\alias{getAccount}
\title{Get Account}
\usage{
getAccount(address, type)
}
\description{
Returns a data frame or list of account details: address, unconfirmed balance, balance, public key, etc.
}
\examples{
getAccount("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK", type="dataframe")
getAccount("AUexKjGtgsSpVzPLs6jNMM6vJ6znEVTQWK", type="list")

}
